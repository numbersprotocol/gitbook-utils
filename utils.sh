loadEnv() {
    if [ -f .env ]; then
        echo ".env is found."
        export $(cat .env | sed 's/#.*//g' | xargs)
    else
        echo ".env is not found."
    fi
}

setCaptureToken() {
    loadEnv

    if [ -z "${CAPTURE_TOKEN}" ]; then
        echo "CAPTURE_TOKEN is not set. Read from input."
        read -sp "Capture token: " captureToken
    else
        echo "CAPTURE_TOKEN is set. Read from .env."
        captureToken=${CAPTURE_TOKEN}
    fi
}