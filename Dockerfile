FROM postgres
MAINTAINER Sebastian Nash <mail@sebnash.com>

ENV POSTGRES_USER=puppetdb
COPY puppetdb_init.sh docker-entrypoint-initdb.d/
