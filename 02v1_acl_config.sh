#!/bin/bash

# Source the environment variables
if [ -f "$(dirname "$(realpath "$0")")/acl_config.env" ]; then
    source "$(dirname "$(realpath "$0")")/acl_config.env"
fi

# Set ACLs for directories
setfacl -m u:$ACL_USER:rwx /var/log/my_infrastructure
setfacl -m u:$ACL_USER:rwx /var/lib/my_infrastructure
setfacl -m u:$ACL_USER:rwx /srv/my_infrastructure

echo "ACLs set for user $ACL_USER."

