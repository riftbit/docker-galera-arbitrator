FROM    debian:stretch-slim

COPY    entrypoint.sh /entrypoint.sh

RUN     apt-get -y update && apt-get -y upgrade && \
        apt-get -y install percona-xtradb-cluster-garbd-5.7 && \
        chmod +x /entrypoint.sh

EXPOSE  4567

ENTRYPOINT     /entrypoint.sh
