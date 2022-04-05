#!/bin/bash

BUCKET="s3://calcurseve"
DATA_DIR="${HOME}/.local/share/calcurse"
CONFIG_DIR="${HOME}/.config/calcurse"

function up {
  # Uploads calendar data
  aws s3 sync "${DATA_DIR}" "${BUCKET}/data" --exclude "*.pid"
  # Uploads config calendar 
  # aws s3 sync "${CONFIG_DIR}" "${BUCKET}/config" --exclude "*.pid" 
}

function down {
  # Downloads calendar data
  aws s3 sync "${BUCKET}/data" "${DATA_DIR}" --exclude "*.pid" 
  # Donwloads config calendar 
  # aws s3 sync "${BUCKET}/config" "${CONFIG_DIR}" --exclude "*.pid" 
}

while getopts "ud" OPTS; do
  case "${OPTS}" in
    u) 
      up;
      echo "Uploaded"
      ;;
    d) down;
      echo "Downloaded"
      ;;
  esac
done
