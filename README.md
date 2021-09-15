# kados-demo

Utilities and data to put up demo instances for [Kolibre-KADOS](https://github.com/kolibre/Kolibre-KADOS) using [kobra](https://github.com/kolibre/kobra) as database backend.

## How to use

Run `docker-compose up -d && ./add-demo-data.sh`.

You may now connect to:

- kobra on `localhost:3000`
- nginx on `localhost:8080`
- kados (v1) on `localhost:8081`
- kados (v2) on `localhost:8082`

The nginx service takes care of proxying requests to the actual kados services so point your client to either of the below URLs:

- `http://localhost:8080/v1/service.php` or `http://localhost:8080/v1/service.php?wsdl` to access the version 1 service
- `http://localhost:8080/v2/service.php` or `http://localhost:8080/v2/service.php?wsdl` to access the version 2 service

## Tear down

Run `docker-compose down && docker volume rm kados-demo_media`
