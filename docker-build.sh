#!/bin/sh
build_iso() {
    docker run --privileged \
               --mount type=bind,source="$(pwd)"/build,target=/axyl-iso/out \
               --mount type=bind,source="$(pwd)"/pacman-cache,target=/var/cache/pacman/pkg \
              -t axyl-fast
}

mkdir -p ./build ./pacman-cache
build_iso
