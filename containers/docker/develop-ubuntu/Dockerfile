FROM ubuntu:xenial

RUN \
  apt-get update && apt-get upgrade -q -y && \
  apt-get install -y --no-install-recommends golang git make gcc libc-dev ca-certificates && \
  git clone --depth 1 https://github.com/forgetopchain/go-forgetop && \
  (cd go-forgetop && make gath) && \
  cp go-forgetop/build/bin/gath /gath && \
  apt-get remove -y golang git make gcc libc-dev && apt autoremove -y && apt-get clean && \
  rm -rf /go-forgetop

EXPOSE 8696
EXPOSE 30696

ENTRYPOINT ["/gath"]
