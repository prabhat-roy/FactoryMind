package router

import (
	"net/http"

	"github.com/factorymind/api-gateway/internal/config"
	"github.com/go-chi/chi/v5"
	"github.com/go-chi/chi/v5/middleware"
	"github.com/prometheus/client_golang/prometheus/promhttp"
)

func New(cfg *config.Config) http.Handler {
	r := chi.NewRouter()
	r.Use(middleware.RequestID)
	r.Use(middleware.RealIP)
	r.Use(middleware.Recoverer)

	r.Get("/healthz", func(w http.ResponseWriter, r *http.Request) { w.Write([]byte("ok")) })
	r.Get("/readyz", func(w http.ResponseWriter, r *http.Request) { w.Write([]byte("ready")) })
	r.Handle("/metrics", promhttp.Handler())

	r.Route("/v1", func(r chi.Router) {
		r.Get("/mes/*", proxy(cfg.MesBFF))
		r.Get("/planning/*", proxy(cfg.PlanningBFF))
		r.Get("/quality/*", proxy(cfg.QualityBFF))
	})
	return r
}

func proxy(target string) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		http.Error(w, "upstream "+target+" not yet implemented", http.StatusNotImplemented)
	}
}
