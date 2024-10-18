#!/bin/bash

# Define the script directory
SCRIPT_DIR=$(dirname "$(realpath "$0")")

# Source the environment variables
if [ -f "$SCRIPT_DIR/setup_inf.env" ]; then
    source "$SCRIPT_DIR/setup_inf.env"
fi

if [ -f "$SCRIPT_DIR/acl_config.env" ]; then
    source "$SCRIPT_DIR/acl_config.env"
fi

if [ -f "$SCRIPT_DIR/acl_setup.env" ]; then
    source "$SCRIPT_DIR/acl_setup.env"
fi

# Set executable permissions for the scripts
chmod +x "$SCRIPT_DIR/setup_inf.sh"
chmod +x "$SCRIPT_DIR/acl_config.sh"

# Run the setup and ACL configuration scripts
set -e  # Exit immediately if a command exits with a non-zero status

./setup_inf.sh
if [ $? -ne 0 ]; then
    echo "setup_inf.sh failed."
    exit 1
fi

./acl_config.sh
if [ $? -ne 0 ]; then
    echo "acl_config.sh failed."
    exit 1
fi

echo "All scripts executed successfully."

