FROM ubuntu:25.04

WORKDIR /app

COPY ./server ./

RUN apt-get update && apt-get install -y ca-certificates

COPY ./root_ca/rootCA.crt /usr/local/share/ca-certificates/

COPY ./root_ca/ /usr/local/ca/


COPY ./server_tls  usr/server_tls

COPY ./jwt_key /usr/keys/jwt_key

RUN update-ca-certificates


EXPOSE 443 444 9001

CMD ["/app/server"]



