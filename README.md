# Resource Management Plan for My Infrastructure

## Project Overview
This resource management plan outlines the structure and components of the my_infrastructure project. It details the services, configurations, and storage locations for logs, databases, and other resources.

---
## Project Structure

```

/var/
├── log/
│   └── my_infrastructure/
│       ├── ldap/
│       ├── pihole/
│       ├── traefik/
│       ├── plex/
│       ├── jellyfin/
│       ├── prometheus/
│       ├── grafana/
│       ├── unbound/
│       └── keepalived/
└── lib/
    └── my_infrastructure/
        ├── db1/
        ├── db2/
        ├── statistics/
        └── shared/
    
/srv/
└── my_infrastructure/
    ├── ldap/
    │   └── docker-compose.yml
    ├── pihole_unbound/
    │   └── docker-compose.yml
    ├── traefik/
    │   └── docker-compose.yml
    ├── media_servers/
    │   ├── plex/
    │   │   └── docker-compose.yml
    │   ├── jellyfin/
    │   │   └── docker-compose.yml
    │   └── rr/
    │       └── docker-compose.yml
    ├── database/
    │   └── docker-compose.yml
    ├── monitoring/
    │   ├── prometheus/
    │   │   └── docker-compose.yml
    │   └── grafana/
    │       └── docker-compose.yml
    └── keepalived/
        └── keepalived.conf

/usr/
└── local/
    └── bin/
        └── my_infrastructure_scripts/
            ├── setup.sh
            ├── backup.sh
            ├── sync.sh
            └── cronjobs.sh
```
---

## Services Overview
1. **LDAP**: Directory service for user management.
   - Configuration: Located at `/srv/my_infrastructure/ldap/docker-compose.yml`

2. **Pi-hole & Unbound**: DNS service with ad-blocking features.
   - Configuration: Located at `/srv/my_infrastructure/pihole_unbound/docker-compose.yml`

3. **Traefik**: Reverse proxy and load balancer.
   - Configuration: Located at `/srv/my_infrastructure/traefik/docker-compose.yml`

4. **Media Servers**:
   - **Plex**: Media library service.
     - Configuration: Located at `/srv/my_infrastructure/media_servers/plex/docker-compose.yml`
   - **Jellyfin**: Open-source media server.
     - Configuration: Located at `/srv/my_infrastructure/media_servers/jellyfin/docker-compose.yml`
   - **RR**: Another media service.
     - Configuration: Located at `/srv/my_infrastructure/media_servers/rr/docker-compose.yml`

5. **Database**: Main database service.
   - Configuration: Located at `/srv/my_infrastructure/database/docker-compose.yml`

6. **Monitoring**:
   - **Prometheus**: Metrics collection and monitoring.
     - Configuration: Located at `/srv/my_infrastructure/monitoring/prometheus/docker-compose.yml`
   - **Grafana**: Visualization tool for metrics.
     - Configuration: Located at `/srv/my_infrastructure/monitoring/grafana/docker-compose.yml`

7. **Keepalived**: High availability service.
   - Configuration: Located at `/srv/my_infrastructure/keepalived/keepalived.conf`

---

## Scripts Overview
1. **setup.sh**: Initializes the environment and structures.
2. **backup.sh**: Manages backups of services.
3. **sync.sh**: Synchronizes data across services.
4. **cronjobs.sh**: Sets up cron jobs for maintenance tasks.

---

## Environment Variables
1. **setup.env**: Contains environment variables for setup script.
2. **acl_config.env**: Contains environment variables for ACL configuration.

---

## Access Control
- User permissions are managed using ACLs for each directory:
  - Logs: `/var/log/my_infrastructure`
  - Libraries: `/var/lib/my_infrastructure`
  - Services: `/srv/my_infrastructure`

---

## Notes
- Ensure that all environment variables are correctly set before running any scripts.
- Review service configurations periodically to maintain optimal performance.

