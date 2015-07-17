#!/bin/bash

# Postgres image creates a database same name as $POSTGRES_USER
# See documention: PuppetDB > Configuration > Using PostgresSQL
# "PostgreSQL 9.3 or above you should install…`pg_trgm` extension"
# http://docs.puppetlabs.com/puppetdb/latest/configure.html#using-postgresql

gosu postgres postgres --single -jE "$POSTGRES_USER" <<-EOSQL
    CREATE EXTENSION IF NOT EXISTS pg_trgm ;
EOSQL
