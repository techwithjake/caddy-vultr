FROM caddy:2.6.4-builder-alpine AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/vultr
    
FROM caddy:latest

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
