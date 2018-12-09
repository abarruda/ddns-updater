docker run -d \
    --name ddns-updater-$DDNS_KEY \
    -e DDNS_KEY=$DDNS_KEY \
    --restart=unless-stopped \
    ddns_updater