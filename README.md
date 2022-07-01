# ddns-updater 
Dynamic Domain Naming Service Updater for Afraid.org affiliated addresses.

### Overview
DDNS domains will be updated every 5 minutes by a Kubernetes `CronJob`

### Running
The Afraid.org API key must be set to the key found in the example update scripts on [Afraid.org](http://freedns.afraid.org/dynamic/):

```
$ pwd
ddns-updater
$ cd  helm
$ helm upgrade --install --debug \
ddns-updater-test-com \
--set secret.api.keyValue=apiKeyHere \
--set secret.domain.name=domainNameForLogs \
--set affinity.node.label=network \
--set affinity.node.value={mbit} \
.
```

### Logging
Checking Pod output via `kubectl logs -f xyz` will expose the result of the last update attempt.