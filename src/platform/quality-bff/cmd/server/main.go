package main

import (
	"log/slog"
	"net/http"
	"os"
)

func main() {
	mux := http.NewServeMux()
	mux.HandleFunc("/healthz", func(w http.ResponseWriter, r *http.Request) { w.Write([]byte("ok")) })
	mux.HandleFunc("/readyz", func(w http.ResponseWriter, r *http.Request) { w.Write([]byte("ready")) })
	port := os.Getenv("PORT")
	if port == "" {
		port = "8080"
	}
	slog.Info("quality-bff listening", "port", port)
	_ = http.ListenAndServe(":"+port, mux)
}
