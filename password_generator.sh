#!/bin/bash

# Function to generate a random password
generate_password() {
  length=$1
  # Generate a random password with the given length
  cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w ${length} | head -n 1
}

# Set the desired length of the password
password_length=12

# Generate a random password with the specified length
generated_password=$(generate_password $password_length)

# Print the generated password
echo "Generated password: $generated_password"