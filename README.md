# kados-demo

Utilities and data to put up demo instances for [Kolibre-KADOS](https://github.com/kolibre/Kolibre-KADOS) using [kobra](https://github.com/kolibre/kobra) as database backend.

## How to use

Run `docker-compose up -d && ./add-demo-data.sh`.

You may now connect to:

- kobra on `localhost:3000`
- nginx on `localhost:8080`
- kados (v1) on `localhost:8081`
- kados (v2) on `localhost:8082`

## Tear down

Run `docker-compose down && docker volume rm kados-demo_media`
