#!/usr/bin/env bash
if [ -x "$(command -v docker)" ]; then
    ./package_files/unpacker.py drupal-7.74.tar.gz ../drupal-src -d -r
    cp ./drupal-src/sites/default/default.settings.php ./drupal-src/sites/default/settings.php
    chmod 755 ./drupal-src/sites/default/settings.php
    mv ./drupal-src/sites ./sites
    docker-compose build
else
    printf '%s\n' "Docker not found. Please install before continuing." >&2
    exit 1
fi
