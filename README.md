# Utilities for Numbers Official Document

## Nit API

The [Numbers official document](https://docs.numbersprotocol.io/) provides information on the scripts available for using the Nit API. The Nit API allows users to commit assets and retrieve asset commit information.

The following scripts are included in the [Getting Started](https://docs.numbersprotocol.io/developers/nit-git-for-media-files/getting-started#use-nit-api) tutorial for using the Nit API:

```sh
$ ./capture-api-get-token-by-email.sh
$ ./capture-api-verify-token.sh

$ cp .env.example .env
# update your Capture token in .env

$ ./nit-api-commit.sh
$ ./nit-api-get-asset-commits.sh
```

Note: It is assumed that the reader has a basic understanding of shell scripts and API concepts. For detailed information on how to use each script, please refer to the official Nit API documentation.