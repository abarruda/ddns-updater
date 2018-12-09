# ddns-updater 
Dynamic Domain Naming Service Updater for Afraid.org affiliated addresses.

### Overview
DDNS domains will be updated roughly every 5 minutes by `cron` running in a docker container.

### Running
The environment variable `DDNS_KEY` must be set to the key found in the example update scripts on [Afraid.org](http://freedns.afraid.org/dynamic/):

```
export DDNS_KEY=<key here>
./run.sh <domain name>
```

Each invocation will spin up a container responsible for the domain associated to the given key.  The container will be named after the domain passed to the script to make it easily identifiable. Change the `DDNS_KEY` environment variable before running the `run.sh` script again to update additonal domains.

### Logging
Output from the updates is logged to STDOUT of the container, so logging can be viewed by:

```
$ docker logs -f ddns-updater-test-domain.com

Sun Dec 9 23:05:17 UTC 2018
No IP change detected for test-domain.com with IP 1.2.3.4, skipping update
Sun Dec 9 23:10:20 UTC 2018
No IP change detected for test-domain.com with IP 1.2.3.4, skipping update
```