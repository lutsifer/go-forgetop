FROM alpine:3.5

RUN \
  apk add --update go git make gcc musl-dev linux-headers ca-certificates && \
  git clone --depth 1 https://github.com/forgetopchain/go-forgetop && \
  (cd go-forgetop && make gath) && \
  cp go-forgetop/build/bin/gath /gath && \
  apk del go git make gcc musl-dev linux-headers && \
  rm -rf /go-forgetop && rm -rf /var/cache/apk/*

EXPOSE 8696
EXPOSE 30696

ENTRYPOINT ["/gath"]
