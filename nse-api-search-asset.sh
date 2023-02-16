#!/bin/bash

source utils.sh

setCaptureToken

generate_post_data() {
    _assetUrl=$1

    cat <<EOF
{
   "fileURL": "${assetUrl}",
   "threshold": 0.12
}
EOF
}

read -p "Asset URL: " assetUrl

echo -e "\n\nSearching asset ${assetUrl} ...\n"

curl -X POST "https://eoo9pxiv5yxg0za.m.pipedream.net" \
     -H "Content-Type: application/json" \
     -H "Authorization: token ${captureToken}" \
     -d "$(generate_post_data ${assetUrl})"
