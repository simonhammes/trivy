FROM debian:bookworm-slim

RUN apt update && \
    apt upgrade -y && \
    mkdir /app && \
    touch /app/test.txt
