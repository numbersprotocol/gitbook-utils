#!/bin/bash

source utils.sh

setCaptureToken

read -p "Asset Nid: " assetNid

echo -e "\n\nSearching asset ${assetNid} ...\n"

curl -X GET -H "Content-Type: application/json" \
            -H "Authorization: token ${captureToken}" \
            "https://eoprdbpm6gbec9w.m.pipedream.net?nid=${assetNid}"
