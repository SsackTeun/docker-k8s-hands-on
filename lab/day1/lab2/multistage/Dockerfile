FROM golang:1.8.3

ENV VAULT_VERSION=0.7.3

## clone vault source code
WORKDIR /go/src/github.com/hashicorp
RUN git clone https://github.com/hashicorp/vault.git

## build vault
WORKDIR /go/src/github.com/hashicorp/vault
RUN git checkout v"${VAULT_VERSION}"
RUN make bootstrap
RUN make dev

RUN mv /go/src/github.com/hashicorp/vault/bin/vault /bin/

CMD ["vault", "server", "-dev"]