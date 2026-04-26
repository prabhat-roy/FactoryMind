package config

import (
	"log/slog"
	"os"
	"strconv"
)

type Config struct {
	Port             string
	MetricsPort      string
	OIDCIssuer       string
	OIDCClientID     string
	OIDCClientSecret string
	RateLimitRPS     int
	MesBFF           string
	PlanningBFF      string
	QualityBFF       string
}

func Load() *Config {
	rps, _ := strconv.Atoi(env("RATE_LIMIT_RPS", "200"))
	return &Config{
		Port:             env("PORT", "8080"),
		MetricsPort:      env("METRICS_PORT", "9090"),
		OIDCIssuer:       env("OIDC_ISSUER_URL", ""),
		OIDCClientID:     env("OIDC_CLIENT_ID", ""),
		OIDCClientSecret: env("OIDC_CLIENT_SECRET", ""),
		RateLimitRPS:     rps,
		MesBFF:           env("DOWNSTREAM_MES_BFF", ""),
		PlanningBFF:      env("DOWNSTREAM_PLANNING_BFF", ""),
		QualityBFF:       env("DOWNSTREAM_QUALITY_BFF", ""),
	}
}

func (c *Config) LogLevel() slog.Level {
	switch env("LOG_LEVEL", "info") {
	case "debug":
		return slog.LevelDebug
	case "warn":
		return slog.LevelWarn
	case "error":
		return slog.LevelError
	default:
		return slog.LevelInfo
	}
}

func env(k, d string) string {
	if v, ok := os.LookupEnv(k); ok {
		return v
	}
	return d
}
