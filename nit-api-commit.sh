#!/bin/bash

source utils.sh

setCaptureToken

generate_post_data() {
    cat <<EOF
{
   "encodingFormat": "application/json",
   "assetCid": "bafkreicptxn6f752c4pvb6gqwro7s7wb336idkzr6wmolkifj3aafhvwii",
   "assetTimestampCreated": 1674981199,
   "assetCreator": "Bofu Chen",
   "assetSha256": "4f9ddbe2ffba171f50f8d0b45df97ec1defc81ab31f598e5a9054ec0029eb642",
   "abstract": "Network Action profile of initial registration on mainnet",
   "testnet": true,
   "custom": "{\"usedBy\": \"https://numbersprotocol.io\"}"
}
EOF
}

echo -e "\n\nCommitting...\n"

curl -X POST "https://eo883tj75azolos.m.pipedream.net" \
     -H "Content-Type: application/json" \
     -H "Authorization: token ${captureToken}" \
     -d "$(generate_post_data)"
