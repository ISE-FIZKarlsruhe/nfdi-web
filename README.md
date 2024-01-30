# NFDI at FIZ

This repository contains all the code and configuration needed to maintain the https://nfdi.fiz-karlsruhe.de/ web space.

At the moment the main component of this space is the NFDI4Culture environment, and in particular the [Research Data Graph](https://nfdi.fiz-karlsruhe.de/4culture/rdg/).

## Using the docker-compose file

The `docker-compose.yml` file from this repository can be used as-is to run the environment. There are some security related entries not speicifed though, these need to be put in a seprate `.env` file on the server during deployment. They are:

```
IDP_X509_CERT=
SP_X509_CERT=
SP_CERT_PK=
SCHPIEL_TOKEN=
```
