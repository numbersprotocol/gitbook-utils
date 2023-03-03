#!/bin/bash

source utils.sh

setCaptureToken

generate_post_data() {
    _assetUrl=$1

    cat <<EOF
{
   "fileURL": "${_assetUrl}",
   "threshold": 0.12,
   "excludedAssets": ["bafybeid32me6xuuamahne2vs4ks57y3wohag4dt65iwhfzpqtpw7y6f75i"],
   "excludedContracts": ["0xb90c5b95d7c29d1448ec079dffedc5905fb77711"]
}
EOF
}

read -p "Asset URL: " assetUrl

echo -e "\n\nDetecting theft for asset ${assetUrl} ...\n"

curl -X POST "https://eofveg1f59hrbn.m.pipedream.net" \
     -H "Content-Type: application/json" \
     -H "Authorization: token ${captureToken}" \
     -d "$(generate_post_data ${assetUrl})"
