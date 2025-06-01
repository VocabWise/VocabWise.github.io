#!/bin/bash

# set variables
REMOTE_REPO="https://github.com/Qihang-Zhang/notes.git"              # remote repo
SOURCE_DIR_A="docs/Note/Posts/published"                             # source dir to sync
SOURCE_DIR_B="docs/Note/Posts/assets"                                # source dir to sync
TARGET_DIR_A="docs/blog/Posts/published"            # target dir to sync
TARGET_DIR_B="docs/blog/Posts/assets"                                # target dir to sync
BRANCH="main"                                                        # branch to sync

# save current directory
ORIGINAL_DIR=$(pwd)

# create temp directory
TEMP_DIR=$(mktemp -d)

# clone remote repo
git clone --filter=blob:none --no-checkout "$REMOTE_REPO" "$TEMP_DIR"
cd "$TEMP_DIR"
git sparse-checkout init --cone
git sparse-checkout set "$SOURCE_DIR_A" "$SOURCE_DIR_B"
git checkout "$BRANCH"

# debug: check if directories exist
echo "Checking if source directories exist:"
ls -la "$SOURCE_DIR_A" 2>/dev/null && echo "✓ $SOURCE_DIR_A exists" || echo "✗ $SOURCE_DIR_A not found"
ls -la "$SOURCE_DIR_B" 2>/dev/null && echo "✓ $SOURCE_DIR_B exists" || echo "✗ $SOURCE_DIR_B not found"

# copy subdir to target dir
if [ -d "$SOURCE_DIR_A" ]; then
    mkdir -p "$ORIGINAL_DIR/$TARGET_DIR_A"
    cp -rf "$SOURCE_DIR_A/." "$ORIGINAL_DIR/$TARGET_DIR_A/"
    echo "✓ Copied $SOURCE_DIR_A to $TARGET_DIR_A"
else
    echo "✗ $SOURCE_DIR_A not found, skipping"
fi

if [ -d "$SOURCE_DIR_B" ]; then
    mkdir -p "$ORIGINAL_DIR/$TARGET_DIR_B"
    cp -rf "$SOURCE_DIR_B/." "$ORIGINAL_DIR/$TARGET_DIR_B/"
    echo "✓ Copied $SOURCE_DIR_B to $TARGET_DIR_B"
else
    echo "✗ $SOURCE_DIR_B not found, skipping"
fi

# clean temp directory
cd "$ORIGINAL_DIR"
rm -rf "$TEMP_DIR"