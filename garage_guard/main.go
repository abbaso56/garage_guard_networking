package main

import (
	"context"
	"crypto/tls"
	"crypto/x509"
	apphandler "garage_guard/app_handler"
	garagehandler "garage_guard/garage_handler"
	"garage_guard/proto/gen/app_api_service/v1/appApiServicev1connect"
	"garage_guard/proto/gen/garage_api_services/v1/garageApiServicesv1connect"
	"garage_guard/sql/db"
	"log"
	"net/http"
	"os"

	"github.com/jackc/pgx/v5"
	"golang.org/x/sync/errgroup"
)

func main() {
	//ifinite loop
	// for {
	// }
	log.SetOutput(os.Stdout)

	//connects to database

	dbConn, err := pgx.Connect(context.Background(), "postgresql://root:pass%3E%29lkPass%24%25@database-1-instance-1.c70c2oyg0r3c.ca-central-1.rds.amazonaws.com:5432/postgres")
	if err != nil {
		log.Fatalf("Unable to connect to database: %v\n", err)

	}

	defer dbConn.Close(context.Background())

	pgDB := db.New(dbConn)

	// Unauthed app path
	muxApp := http.NewServeMux()

	muxApp.Handle(appApiServicev1connect.NewAppApiServiceHandler(
		&apphandler.AppHandler{DataQuery: pgDB, DbConn: dbConn},
	))

	//get certificate
	crtPem, err := os.ReadFile("usr/server_tls/srv_out.crt")
	if err != nil {
		log.Fatal("failed to read cert")
	}

	keyPem, err := os.ReadFile("usr/server_tls/srv.key")
	if err != nil {
		log.Fatal("failed to read key")
	}

	cK, err := tls.X509KeyPair(crtPem, keyPem)
	if err != nil {
		log.Fatal("failed to make pair")
	}

	// caCert, err := os.ReadFile("usr/local/rootCA.crt")
	// if err != nil {
	// 	log.Fatal("failed to read ca cert")
	// }
	caCertPool := x509.NewCertPool()
	caCertPool.AppendCertsFromPEM(crtPem)

	appServer := &http.Server{
		Addr:    ":443",
		Handler: muxApp,
		TLSConfig: &tls.Config{
			MinVersion:   tls.VersionTLS13,
			Certificates: []tls.Certificate{cK},
		},
	}

	// Authed app path
	muxAuth := http.NewServeMux()
	muxAuth.Handle(appApiServicev1connect.NewAuthedAppApiServiceHandler(
		&apphandler.AuthedAppHandler{DataQuery: pgDB, DbConn: dbConn},
	))

	authAppServer := &http.Server{
		Addr:    ":444",
		Handler: muxAuth,
		TLSConfig: &tls.Config{
			ClientCAs:    caCertPool,
			ClientAuth:   tls.RequireAnyClientCert,
			MinVersion:   tls.VersionTLS13,
			Certificates: []tls.Certificate{cK},
		},
	}

	// Garage device path
	muxGarage := http.NewServeMux()
	muxGarage.Handle(garageApiServicesv1connect.NewGarageEntryCheckServiceHandler(
		&garagehandler.GEntryHandler{DataQuery: pgDB, DbConn: dbConn},
	))

	garageSerever := &http.Server{
		Addr:    ":9001",
		Handler: muxGarage,
		TLSConfig: &tls.Config{
			MinVersion:   tls.VersionTLS13,
			Certificates: []tls.Certificate{cK},
		},
	}

	erg, _ := errgroup.WithContext(context.Background())
	log.Println("server about to start")

	// Run unauthed app path server
	erg.Go(func() error {
		return appServer.ListenAndServeTLS("", "")
	})

	// Run authed app path server
	erg.Go(func() error {
		return authAppServer.ListenAndServeTLS("", "")
	})

	erg.Go(func() error {
		return garageSerever.ListenAndServeTLS("", "")
	})

	log.Println("server running")
	if err := erg.Wait(); err != nil {
		log.Fatal(err)
	}
}

// func corsRules(next http.Handler) http.Handler {
// 	return http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {

// 		//allows access form all origins
// 		w.Header().Set("Access-Control-Allow-Origin", "*")

// 		//allows GET POST PUT DELETE OPTIONS
// 		w.Header().Set("Access-Control-Allow-Methods", "GET, POST, PUT, DELETE, OPTIONS")

// 		//allows all headers
// 		w.Header().Set("Access-Control-Allow-Headers", "*")

// 		//allows cookies
// 		w.Header().Set("Access-Control-Allow-Credentials", "true")

// 		if r.Method == "OPTIONS" {
// 			w.WriteHeader(http.StatusOK)

// 		}
// 		next.ServeHTTP(w, r)
// 	})
// }

// func handlerHealthCheck(w http.ResponseWriter, r *http.Request) {
// 	w.WriteHeader(http.StatusOK)
// }
