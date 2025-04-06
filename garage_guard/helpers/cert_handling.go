package helpers

import (
	"bytes"
	"crypto/rand"
	"crypto/x509"
	"crypto/x509/pkix"
	"encoding/asn1"
	"encoding/pem"
	"errors"
	"fmt"
	"log"
	"math/big"
	"os"
	"time"
	"unicode/utf8"

	"github.com/google/uuid"
)

func CreateClientCert(csrPem string, user_id uuid.UUID) (string, error) {
	if !utf8.ValidString(csrPem) {
		log.Printf("Invalid UTF-8 in CSR")
		return "", errors.New("invalid UTF-8 in CSR")
	}
	//parsing the CSR since it was sent over as a string PEM
	csrBlock, _ := pem.Decode([]byte(csrPem))
	if csrBlock == nil {
		log.Printf("Error decoding CSR PEM block")
		return "", errors.New("error decoding CSR PEM block")

	}

	csr, err := x509.ParseCertificateRequest(csrBlock.Bytes)
	if err != nil {
		log.Printf("Error parsing CSR: %v", err)
		return "", err
	}

	if err := csr.CheckSignature(); err != nil {
		log.Printf("Error checking CSR signature: %v", err)
		return "", err
	}

	serialNumber, err := rand.Int(rand.Reader, new(big.Int).Lsh(big.NewInt(1), 128))
	if err != nil {
		log.Printf("Error creating certificate serial number: %v", err)
		return "", err
	}

	// Get the ca Cert
	caCertPemBytes, err := os.ReadFile("usr/server_tls/srv.crt")
	if err != nil {
		log.Printf("Error loading ca cert: %v", err)
		return "", err
	}

	caCertBlock, _ := pem.Decode(caCertPemBytes)
	if caCertBlock == nil {
		log.Printf("Error decoding ca cert pem block")
		return "", errors.New("error decoding ca cert pem block")
	}

	caCert, err := x509.ParseCertificate(caCertBlock.Bytes)
	if err != nil {
		log.Printf("Error parsing ca cert: %v", err)
		return "", err
	}

	// Get the  ca key
	caKeyPemBytes, err := os.ReadFile("usr/server_tls/srv.key")
	if err != nil {
		log.Printf("Error loading ca key: %v", err)
		return "", err
	}

	caKeyBlock, _ := pem.Decode(caKeyPemBytes)
	if caKeyBlock == nil {
		log.Printf("Error decoding ca key pem block")
		return "", errors.New("error decoding ca key pem block")
	}

	caKey, err := x509.ParseECPrivateKey(caKeyBlock.Bytes)
	if err != nil {
		log.Printf("Error parsing ca key: %v", err)
		return "", err
	}

	userIdField, err := asn1.Marshal(fmt.Sprintf("user_id=%s", user_id.String()))
	if err != nil {
		log.Printf("Error encoding user_id: %v", err)
		return "", err
	}
	// Fillout csr from the app with info that the server has

	csrFilled := &x509.Certificate{
		SerialNumber: serialNumber,
		Subject:      csr.Subject,
		NotBefore:    time.Now(),
		NotAfter:     time.Now().Add(24 * time.Hour), //client cert lasts for a day for now
		ExtKeyUsage:  []x509.ExtKeyUsage{x509.ExtKeyUsageClientAuth},
		KeyUsage:     x509.KeyUsageDigitalSignature, //I don't think you need to be able to encrypt stuff since the keys are ecdsa so only ds

		// User id
		ExtraExtensions: []pkix.Extension{
			{
				Id:       []int{2, 5, 29, 17},
				Critical: false, // False for now since I'm unsure if the server will reject it otherwise
				Value:    userIdField,
			},
		},
	}

	cert, err := x509.CreateCertificate(rand.Reader, csrFilled, caCert, csr.PublicKey, caKey)
	if err != nil {
		log.Printf("Error creating certificate: %v", err)
		return "", err
	}

	// change cert to pem
	certPEM := new(bytes.Buffer)

	pem.Encode(certPEM, &pem.Block{
		Type:  "CERTIFICATE",
		Bytes: cert,
	})
	if !utf8.ValidString(certPEM.String()) {
		log.Printf("Invalid UTF-8 in CST")
		return "", errors.New("invalid UTF-8 in CST")
	}

	return certPEM.String(), nil

}
