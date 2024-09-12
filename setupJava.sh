#!/bin/bash

VERSION="${1}"
IMAGE="eclipse-temurin"

if [[ -z "${VERSION}" ]]; then
	echo "version is empty ussing latest!"
	VERSION="latest"
fi

echo "running ${IMAGE} with version ${VERSION}"

docker run -it --entrypoint ./setup/envSetup.sh --volume ./setup:/setup "${IMAGE}:${VERSION}"

