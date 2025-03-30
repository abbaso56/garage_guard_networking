package helpers

import (
	"bytes"
	"crypto/ed25519"
	"crypto/sha256"
	"crypto/x509"
	"encoding/base64"
	"encoding/json"
	"encoding/pem"
	"log"
	"os"
	"time"

	"github.com/google/uuid"
)

// Struct defining the header of the app's jwt token
type userJwtHeader struct {
	alg string
	typ string
}

// Struct defining the body of the app's jwt token
type UserJwtBody struct {
	UserId    uuid.UUID
	Username  string
	IssuedAt  time.Time
	ExpiresAt time.Time
}

// encodes a struct by passing it use the struct interface
func EncodeStruct(s interface{}) ([]byte, error) {
	sJson, err := json.Marshal(s)
	if err != nil {
		log.Printf("%v\n", err)
		return nil, err
	}
	sEncoded := base64.URLEncoding.EncodeToString(sJson)

	return []byte(sEncoded), nil
}

func CreateAppJwt(userId uuid.UUID, username string) ([]byte, error) {

	header := userJwtHeader{
		"EdDSA", //using Ed25519 specifically
		"JWST",  //Json web signature token

	}

	headerEncoded, err := EncodeStruct(header)
	if err != nil {
		return nil, err
	}
	body := UserJwtBody{
		userId,
		username,
		time.Now().UTC(),
		time.Now().UTC().Add(time.Minute * 20), // 20 minute life cycle
	}

	bodyEncoded, err := EncodeStruct(body)
	if err != nil {
		return nil, err
	}

	// creates message to be hashed
	headerAndBody := append(append(headerEncoded, []byte(".")...), bodyEncoded...)

	//creates digest
	jwtHash := sha256.New()
	jwtHash.Write(headerAndBody)

	digest := jwtHash.Sum(nil)

	keyEncoded, err := os.ReadFile("/usr/keys/jwt_key/jwt.key")
	if err != nil {
		return nil, err
	}
	keyBlock, _ := pem.Decode(keyEncoded)
	keyBytes, err := x509.ParsePKCS8PrivateKey(keyBlock.Bytes)
	if err != nil {
		return nil, err
	}
	key, _ := keyBytes.(ed25519.PrivateKey)
	signature := ed25519.Sign(key, digest)
	encodeS := []byte(base64.URLEncoding.EncodeToString(signature))
	return append(append(headerAndBody, []byte(".")...), encodeS...), nil

}

func CheckJwt(jwtBin []byte) (UserJwtBody, error) {
	keyEncoded, err := os.ReadFile("/usr/keys/jwt_key/jwtPublic.key")
	if err != nil {
		return UserJwtBody{}, err
	}
	keyBlock, _ := pem.Decode(keyEncoded)
	keyBytes, err := x509.ParsePKIXPublicKey(keyBlock.Bytes)
	if err != nil {
		return UserJwtBody{}, err
	}
	key, _ := keyBytes.(ed25519.PublicKey)

	jwtParts := bytes.Split(jwtBin, []byte("."))
	if len(jwtParts) != 3 {
		return UserJwtBody{}, err
	}
	headerAndBody := append(append(jwtParts[0], []byte(".")...), jwtParts[1]...)

	signature, err := base64.URLEncoding.DecodeString(string(jwtParts[2]))

	if err != nil {
		return UserJwtBody{}, err
	}

	//creates digest for user delivered token
	jwtHash := sha256.New()
	jwtHash.Write(headerAndBody)

	digest := jwtHash.Sum(nil)

	if ok := ed25519.Verify(key, digest, signature); !ok {
		return UserJwtBody{}, nil
	}

	bodyJson, err := base64.URLEncoding.DecodeString(string(jwtParts[1]))
	if err != nil {
		return UserJwtBody{}, err
	}
	body := UserJwtBody{}
	json.Unmarshal(bodyJson, &body)
	return body, nil

}
