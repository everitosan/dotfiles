#!/bin/bash

BUCKET="s3://calcurseve"
DATA_DIR="${HOME}/.local/share/calcurse"
CONFIG_DIR="${HOME}/.config/calcurse"

function up {
  # Uploads calendar data
  aws s3 sync "${DATA_DIR}" "${BUCKET}/data"
  # Uploads config calendar data
  aws s3 sync "${CONFIG_DIR}" "${BUCKET}/config"
}

function down {
  # Downloads calendar data
  aws s3 sync "${BUCKET}/data" "${DATA_DIR}"
  # Donwloads config calendar data
  aws s3 sync "${BUCKET}/config" "${CONFIG_DIR}"
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
