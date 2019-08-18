# Deprecation Notice!

NB: This project is no longer maintained and the repository has been archived.

---

## CouchDB Proxy

Simply a Nginx reverse proxy for CouchDB. Provides the ability to encrypt communications and use client certificate authentication.

## Usage

This container requires a set of certificates mounted at `/etc/nginx/ssl/`. `COUCHDB_SERVICE` defaults to "couchdb".

Example:

```
ls ssl/
ca.pem
crl.pem
server.pem
docker run --rm -it -e COUCHDB_SERVICE=dnscouch -v `pwd`/ssl:/etc/nginx/conf.d/ssl panubo/couchdb-proxy
```
