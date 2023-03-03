#!/bin/bash

source utils.sh

setCaptureToken

read -p "Asset local filepath: " assetFilepath

echo -e "\n\nDetecting theft for asset ${assetFilepath} ...\n"

curl -X POST "https://eofveg1f59hrbn.m.pipedream.net" \
     -H "Authorization: token ${captureToken}" \
     -F "file=@${assetFilepath}" \
     -F "threshold=0.12" \
     -F 'excludedAssets=["bafybeid32me6xuuamahne2vs4ks57y3wohag4dt65iwhfzpqtpw7y6f75i"]' \
     -F 'excludedContracts=["0xb90c5b95d7c29d1448ec079dffedc5905fb77711"]'
