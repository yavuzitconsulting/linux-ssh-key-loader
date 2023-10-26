#!/bin/bash

# Initialize the SSH agent
eval $(ssh-agent -s)

# Iterate through all files in the current directory
for filename in ./*; do
    # Check if the first line of the file is the beginning of an OpenSSH private key
    first_line=$(head -n 1 "$filename")
    if [[ "$first_line" == "-----BEGIN OPENSSH PRIVATE KEY-----" ]]; then
        # Set the correct permissions for the SSH key
        chmod 600 "$filename"
        # Add the key to the SSH agent
        ssh-add "$filename"
        echo "Added $filename to SSH agent."
    fi
done

