# AGENTS.md — php8.2fpm

## What this is
Docker image for PHP 8.2-FPM with additional extensions (GD with freetype/jpeg, mysqli) and a 3GB memory limit.

## Stack
- Docker (php:8.2-fpm base)
- PHP extensions (GD, mysqli)

## Build
```bash
docker build -t myridia/php8.2fpm .
```

## Run
Use as a FastCGI backend in docker-compose with nginx or apache.

## Structure
- `Dockerfile` — PHP 8.2-FPM with GD and mysqli extensions
- `build.sh` — build helper
- `clean.sh` — cleanup script
- `.github/workflows/publish_docker.yaml` — CI publish workflow

## Conventions
- No comments in code unless asked.
- Verify: `docker build -t myridia/php8.2fpm .`
