#!/bin/bash

PG_URL="deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)-pgdg main"
PG_LIST=/etc/apt/sources.list.d/pgdg.list
PG_KEY=https://www.postgresql.org/media/keys/ACCC4CF8.asc

function installPostgres() {
  if [ ! -d /etc/apt/sources.list.d/pgdg.list ]; then
    sudo sh -c "echo \"$(PG_URL)\" > $(PG_LIST)"
    wget --quiet -O - $(PG_KEY) | sudo apt-key add -
    apt install --yes postgresql-10 pgadmin4 libpq-dev
  fi
}
