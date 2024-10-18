#!/bin/bash

# Source environment variables
SCRIPT_DIR=$(dirname "$(realpath "$0")")
if [ -f "$SCRIPT_DIR/setup_inf.env" ]; then
    source "$SCRIPT_DIR/setup_inf.env"
fi

# Create directories
mkdir -p "$BASE_DIR"
mkdir -p "$LOG_DIR"
mkdir -p "$DB_DIR"

# Create logs for each service
mkdir -p "$LOG_DIR/ldap"
mkdir -p "$LOG_DIR/pihole"
mkdir -p "$LOG_DIR/traefik"
mkdir -p "$LOG_DIR/plex"
mkdir -p "$LOG_DIR/jellyfin"
mkdir -p "$LOG_DIR/prometheus"
mkdir -p "$LOG_DIR/grafana"
mkdir -p "$LOG_DIR/unbound"
mkdir -p "$LOG_DIR/keepalived"

# Create databases
mkdir -p "$DB_DIR/db1"
mkdir -p "$DB_DIR/db2"
mkdir -p "$DB_DIR/statistics"
mkdir -p "$DB_DIR/shared"

echo "Setup completed successfully."

