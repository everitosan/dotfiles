#!/bin/bash

DATA_DIR="${HOME}/.local/share/calcurse"
CONFIG_DIR="${HOME}/.config/calcurse"

function clean {
  # Removes default config from instalation
  rm -rf "${DATA_DIR}" 
  rm -rf "${CONFIG_DIR}"
}

function create_link {
  # Create symbolic links for config
  ln -s "$(pwd)/config" "${CONFIG_DIR}"
  # Creates empty dir for data 	 
  mkdir -p "${DATA_DIR}"
}

echo -n "Please be sure to have installed and configured aws-cli.
Note the default bucket should be named calcurseve.

Press any key to continue or q to abort: 
"

read res;

if [ "${res}" = "q" ] 
then
  exit 0
else
  clean;
  create_link;
fi
