#!/bin/bash

# Function to verify the password using the Python script
verify_password() {
    local username=$1
    local entered_password=$2

    # Retrieve the hashed password from /etc/shadow
    local stored_hash=$(sudo grep "^$username:" /etc/shadow | cut -d: -f2)

    if [ -z "$stored_hash" ]; then
        echo "User not found or no password set."
        exit 1
    fi

    # Call the Python script to verify the password
    ./12-1.verify_password.py "$stored_hash" "$entered_password"
    return $?
}

# Read username and password
read -p "Username: " username
read -s -p "Password: " entered_password
echo

# Verify the password
if verify_password "$username" "$entered_password"; then
    echo "Welcome to Linux Shell Scripting."
else
    echo "Authentication failed."
fi
