FROM caddy:builder AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/vultr

FROM caddy:alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
