FROM docker.io/caddy:builder AS builder

RUN xcaddy build \
     --with github.com/caddy-dns/cloudflare

FROM docker.io/caddy:latest

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
