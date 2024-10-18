#!/bin/bash

# Define base directories
LOG_DIR="/var/log/my_infrastructure"
LIB_DIR="/var/lib/my_infrastructure"
SRV_DIR="/srv/my_infrastructure"
SCRIPTS_DIR="/usr/local/bin/my_infrastructure_scripts"

# Create directories for logs
mkdir -p "$LOG_DIR"/{ldap,pihole,traefik,plex,jellyfin,prometheus,grafana,unbound,keepalived}

# Create directories for libraries
mkdir -p "$LIB_DIR"/{db1,db2,statistics,shared}

# Create service directories
mkdir -p "$SRV_DIR"/{ldap,pihole_unbound,traefik,media_servers/{plex,jellyfin,rr},database,monitoring/{prometheus,grafana},keepalived}

# Create scripts directory
mkdir -p "$SCRIPTS_DIR"

# Create .env files
cat <<EOL > "$SRV_DIR/ldap/.env"
# LDAP environment variables
LDAP_DOMAIN="example.com"
LDAP_BASE_DN="dc=example,dc=com"
EOL

cat <<EOL > "$SRV_DIR/pihole_unbound/.env"
# Pi-hole and Unbound environment variables
PIHOLE_PASSWORD="your_password"
EOL

cat <<EOL > "$SRV_DIR/database/.env"
# Database environment variables
DB_USER="your_db_user"
DB_PASS="your_db_password"
EOL

cat <<EOL > "$SCRIPTS_DIR/setup.env"
# Setup script environment variables
BASE_DIR="/srv/my_infrastructure"
EOL

cat <<EOL > "$SCRIPTS_DIR/acl_config.env"
# ACL configuration variables
ACL_USER="myuser"
EOL

# Create sample docker-compose.yml files
touch "$SRV_DIR/ldap/docker-compose.yml"
touch "$SRV_DIR/pihole_unbound/docker-compose.yml"
touch "$SRV_DIR/traefik/docker-compose.yml"
touch "$SRV_DIR/media_servers/plex/docker-compose.yml"
touch "$SRV_DIR/media_servers/jellyfin/docker-compose.yml"
touch "$SRV_DIR/media_servers/rr/docker-compose.yml"
touch "$SRV_DIR/database/docker-compose.yml"
touch "$SRV_DIR/monitoring/prometheus/docker-compose.yml"
touch "$SRV_DIR/monitoring/grafana/docker-compose.yml"
touch "$SRV_DIR/keepalived/keepalived.conf"

# Create script files
touch "$SCRIPTS_DIR/setup.sh"
touch "$SCRIPTS_DIR/backup.sh"
touch "$SCRIPTS_DIR/sync.sh"
touch "$SCRIPTS_DIR/cronjobs.sh"

# Set permissions
chmod 755 "$SCRIPTS_DIR/"*.sh
chmod 644 "$SRV_DIR/"*.env
chmod 644 "$SRV_DIR/"*/*.yml
chmod 644 "$SRV_DIR/keepalived/keepalived.conf"

echo "Directory structure created successfully!"

