FROM ubuntu:20.04

COPY ./scripts/ci ./app
WORKDIR /app

RUN ./install-chain-tests-deps.sh
CMD ./local-chain/run-local-chain.sh ithacanet
EXPOSE 8732