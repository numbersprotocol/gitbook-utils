#!/bin/bash

read -p "Capture account (email): " captureAccount
read -sp "Password: " capturePassword

echo -e "\n\nYour Capture token is:"

curl -X POST "https://dia-backend.numbersprotocol.io/api/v3/auth/token/login/" \
     -H "Content-Type: application/json" \
     -d "{\"email\": \"${captureAccount}\", \"password\": \"${capturePassword}\"}"

