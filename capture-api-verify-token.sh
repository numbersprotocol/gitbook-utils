#!/bin/bash

source utils.sh

setCaptureToken

echo -e "\nVerifying your Capture token. If the token is valid, you will see your user info below.\n"

curl -X GET "https://dia-backend.numbersprotocol.io/api/v3/auth/users/me/" \
     -H "Authorization: token ${captureToken}"

