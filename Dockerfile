FROM  babim/alpinebase
RUN   adduser -S -D -H -h /xmrig miner
RUN   apk --no-cache upgrade && \
      apk --no-cache add \
        git \
        cmake \
        libuv-dev \
        build-base libuuid libmicrohttpd-dev && \
      git clone https://github.com/xmrig/xmrig-proxy.git && mv xmrig-proxy xmrig-proxy-dev && \
      cd xmrig-proxy-dev && mkdir build && cd build && \
      cmake .. -DCMAKE_BUILD_TYPE=Release -DUV_LIBRARY=/usr/lib/x86_64-linux-gnu/libuv.a && \
      make && mv xmrig-proxy / && cd ../../ && rm -rf xmrig-proxy-dev && \
      apk del build-base cmake git
USER miner
WORKDIR    /
ENTRYPOINT ["./xmrig-proxy", "--donate-level=1"]
