# docker-xmrig-proxy
can't found uuid-dev (if you can fix, please create issue or email to me. Thanks)

# Basic example

`docker run --restart unless-stopped babim/xmrig-proxy -o pool.minemonero.pro:5555 -u YOUR_WALLET -p x --bind 0.0.0.0:3333 --bind 0.0.0.0:5555`

# Failover

`docker run --restart unless-stopped babim/xmrig-proxy -o pool.minemonero.pro:5555 -u YOUR_WALLET1 -o pool.supportxmr.com:5555 -u YOUR_WALLET2 -p x --bind 0.0.0.0:5555 `

For failover you can add multiple pools, maximum count not limited.
Options
```
  -b, --bind=ADDR       bind to specified address, example "0.0.0.0:3333"
  -o, --url=URL         URL of mining server
  -O, --userpass=U:P    username:password pair for mining server
  -u, --user=USERNAME   username for mining server
  -p, --pass=PASSWORD   password for mining server
  -k, --keepalive       send keepalived for prevent timeout (need pool support)
  -r, --retries=N       number of times to retry before switch to backup server (default: 5)
  -R, --retry-pause=N   time to pause between retries (default: 5)
      --no-color        disable colored output
      --verbose         verbose output
  -B, --background      run the miner in the background
  -l, --log-file=FILE   log all output to a file
  -h, --help            display this help and exit
  -V, --version         output version information and exit
```
