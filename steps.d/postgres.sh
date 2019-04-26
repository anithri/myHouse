#!/bin/bash

PG_URL=
PG_LIST=/etc/apt/sources.list.d/pgdg.list
PG_KEY=https://www.postgresql.org/media/keys/ACCC4CF8.asc

function installPostgres() {
  if [ ! -d /etc/apt/sources.list.d/pgdg.list ]; then
    sudo sh -c "echo \"deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)-pgdg main\" > /home/scottp/Tools/myHouse/steps.d/postgres.sh"
    wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
    apt install --yes postgresql-10 pgadmin4 libpq-dev
  fi
}
