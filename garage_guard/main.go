package main

import (
	"context"
	"crypto/tls"
	apphandler "garage_guard/app_handler"
	"garage_guard/intercept"
	"garage_guard/proto/gen/app_api_service/v1/appApiServicev1connect"
	"garage_guard/sql/db"
	"log"
	"net/http"
	"os"

	"connectrpc.com/connect"
	"github.com/jackc/pgx/v5"
	"golang.org/x/sync/errgroup"
)

func main() {
	log.SetOutput(os.Stdout)

	//connects to database

	dbConn, err := pgx.Connect(context.Background(), os.Getenv("PG_URL"))
	if err != nil {
		log.Fatalf("Unable to connect to database: %v\n", err)

	}

	defer dbConn.Close(context.Background())

	pgDB := db.New(dbConn)

	//interceptors
	interceptors := connect.WithInterceptors(intercept.AppAuthIntercepter())

	muxApp := http.NewServeMux()

	muxApp.Handle(appApiServicev1connect.NewAppApiServiceHandler(
		&apphandler.AppHandler{DataQuery: pgDB},
		interceptors,
	))

	//get certificate
	crtPem, err := os.ReadFile("usr/server_tls/srv.crt")
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

	appServer := &http.Server{
		Addr:    ":443",
		Handler: muxApp,
		TLSConfig: &tls.Config{
			MinVersion:   tls.VersionTLS13,
			Certificates: []tls.Certificate{cK},
		},
	}

	erg, _ := errgroup.WithContext(context.Background())
	log.Println("server about to start")
	erg.Go(func() error {
		return appServer.ListenAndServeTLS("", "")
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
