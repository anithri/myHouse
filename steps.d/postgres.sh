#!/bin/bash

function installPostgres() {
  if [ ! -d /etc/apt/sources.list.d/pgdg.list ]; then
    sudo sh -c "echo \"deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)-pgdg main\" > /etc/apt/sources.list.d/postgres.list"
    wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
    sudo apt install --yes postgresql-10 pgadmin3 libpq-dev
    sudo -u postgres psql 
    sudo -u postgres createuser -d -P rails
    sudo -u postgres createuser -d scottp
    cowsay 'Change /etc/postgresql/10/main/conf.d/ 
  fi
}

