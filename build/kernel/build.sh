#!/bin/sh

SKYLINE_SHORT_HASH=$(echo $SKYLINE_COMMIT_HASH | cut -c 1-8)

if [ -z "$SKYLINE_SUB_ARCH" ]
then
    SKYLINE_FULL_ARCH="$SKYLINE_ARCH"
else
    SKYLINE_FULL_ARCH="$SKYLINE_ARCH/$SKYLINE_SUB_ARCH"
fi

SKYLINE_BUILD_DIR="$PWD/build/$(SKYLINE_FULL_ARCH)"

echo Commit hash: $SKYLINE_SHORT_HASH, Tag: $SKYLINE_TAG, Arch: $SKYLINE_FULL_ARCH, Bootloader: $SKYLINE_BOOTLOADER

[ -d "./build" ] || meson setup . build \
    -D git_commit_hash="$SKYLINE_SHORT_HASH" \
    -D git_tag="$SKYLINE_TAG" \
    -D architecture="$SKYLINE_ARCH" \
    -D sub_architecture="$SKYLINE_SUB_ARCH" \
    -D bootloader="$SKYLINE_BOOTLOADER"
