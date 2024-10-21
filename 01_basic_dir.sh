#!/bin/bash

# Define the base project directory
BASE_DIR="my_infrastructure"

# Create the main project directory
mkdir -p "$BASE_DIR"

# Create compose directories and files
mkdir -p "$BASE_DIR/compose/ldap"
touch "$BASE_DIR/compose/ldap/docker-compose.yml"

mkdir -p "$BASE_DIR/compose/pihole_unbound"
touch "$BASE_DIR/compose/pihole_unbound/docker-compose.yml"

mkdir -p "$BASE_DIR/compose/traefik"
touch "$BASE_DIR/compose/traefik/docker-compose.yml"

mkdir -p "$BASE_DIR/compose/media_servers/plex"
touch "$BASE_DIR/compose/media_servers/plex/docker-compose.yml"

mkdir -p "$BASE_DIR/compose/media_servers/jellyfin"
touch "$BASE_DIR/compose/media_servers/jellyfin/docker-compose.yml"

mkdir -p "$BASE_DIR/compose/media_servers/rr"
touch "$BASE_DIR/compose/media_servers/rr/docker-compose.yml"

mkdir -p "$BASE_DIR/compose/database"
touch "$BASE_DIR/compose/database/docker-compose.yml"

mkdir -p "$BASE_DIR/compose/monitoring/prometheus"
touch "$BASE_DIR/compose/monitoring/prometheus/docker-compose.yml"

mkdir -p "$BASE_DIR/compose/monitoring/grafana"
touch "$BASE_DIR/compose/monitoring/grafana/docker-compose.yml"

mkdir -p "$BASE_DIR/compose/keepalived"
touch "$BASE_DIR/compose/keepalived/keepalived.conf"

# Create scripts directory and files
mkdir -p "$BASE_DIR/scripts"
touch "$BASE_DIR/scripts/setup.sh"
touch "$BASE_DIR/scripts/backup.sh"
touch "$BASE_DIR/scripts/sync.sh"
touch "$BASE_DIR/scripts/cronjobs.sh"

# Create env directory and files
mkdir -p "$BASE_DIR/env"
touch "$BASE_DIR/env/.env"
touch "$BASE_DIR/env/pihole.env"
touch "$BASE_DIR/env/ldap.env"
touch "$BASE_DIR/env/db.env"
touch "$BASE_DIR/env/prometheus.env"
touch "$BASE_DIR/env/grafana.env"

# Create logs directory
mkdir -p $BASE_DIR/logs/{ldap,pihole,traefik,plex,jellyfin,prometheus,grafana,unbound,keepalived}

# Create db directory
mkdir -p $BASE_DIR/db/{ldap,pihole,media/{videos,musics,photos,rr_feed},statistics}

echo "Directory structure created successfully!"

