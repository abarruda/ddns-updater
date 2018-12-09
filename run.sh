docker run -d \
    --name ddns-updater-${1} \
    -e DDNS_KEY=$DDNS_KEY \
    --restart=unless-stopped \
    ddns_updater