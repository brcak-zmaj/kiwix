#!/bin/bash

# Define directory that contains your ZIM files
ZIM_DIR="/mnt/archives/zim"

# Path to the library file
LIBRARY_FILE="${ZIM_DIR}/library.xml"

# Create or clear the library file
echo "" > "${LIBRARY_FILE}"

sudo apt install kiwix-tools -y

# Find all ZIM files in the directory and add them to the library
for ZIM_FILE in ${ZIM_DIR}/*.zim; do
    kiwix-manage "${LIBRARY_FILE}" add "${ZIM_FILE}"
done
