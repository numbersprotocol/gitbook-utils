# Utilities for Numbers Official Document

## Nit API

The [Numbers official document](https://docs.numbersprotocol.io/) provides information on the scripts available for using the Nit API. The Nit API allows users to commit assets and retrieve asset commit information.

The following scripts are included in the [Getting Started](https://docs.numbersprotocol.io/developers/nit-git-for-media-files/getting-started#use-nit-api) tutorial for using the Nit API:

```sh
$ ./capture-api-get-token-by-email.sh
$ ./capture-api-verify-token.sh

$ cp .env.example .env
# update your Capture token in .env

# update your asset info in nit-api-commit.sh before running it
$ ./nit-api-commit.sh
$ ./nit-api-get-asset-commits.sh
```

Note: It is assumed that the reader has a basic understanding of shell scripts and API concepts. For detailed information on how to use each script, please refer to the official Nit API documentation.

## NSE API

The [Numbers Search Engine API document](https://docs.numbersprotocol.io/developers/search-engine-api) powered by AI technology, allows developers to easily locate and retrieve the exact match or similar assets/NFTs of their input content. The API returns the content information, marketplaces, and NFT history across supported blockchains, providing a comprehensive view of the digital asset.

```sh
# Discovering and retrieving digital assets that have been registered within
# the Web3 ecosystem. Additionally, a list of similar assets will be provided
# for further exploration.
$ ./nse-api-search-asset.sh

# Retrieving the NFT tokens that have been minted for a specific digital asset.
#
# The API takes the Nid of the asset as input and returns the cross-network NFT
# records for that asset.
$ ./nse-api-search-nft.sh

# The Theft Detection API is a powerful tool that helps you safeguard your
# digital assets by detecting any unauthorized use or duplication of your
# ontent.
#
# With this API, you can find similar assets and cross-network NFTs that
# use your asset, giving you the peace of mind that your creative work
# is protected.
$ ./nse-api-detect-theft.sh
```
