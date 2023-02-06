#!/bin/bash

source utils.sh

setCaptureToken

read -p "Use sample Nid? (y/n): " useSampleNid
if [ "${useSampleNid}" == "y" ]; then
    assetNid="bafkreicptxn6f752c4pvb6gqwro7s7wb336idkzr6wmolkifj3aafhvwii"
else
    read -p "Asset Nid: " assetNid
fi

read -p "From mainnet (y) or testnet (n)? (y/n): " fromMainnet
if [ "${fromMainnet}" == "y" ]; then
    networkParam=""
    echo -e "\n\nGetting Asset Commits of Nid ${assetNid} from mainnet...\n"
else
    networkParam="&testnet=true"
    echo -e "\n\nGetting Asset Commits of Nid ${assetNid} from testnet...\n"
fi

curl \
    -X GET \
    -H "Content-Type: application/json" \
    -H "Authorization: token ${captureToken}" \
    "https://eo4og43h09ke8l4.m.pipedream.net?nid=${assetNid}${networkParam}"

