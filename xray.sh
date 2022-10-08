#!/bin/sh
if [ ! -f UUID ]; then
  UUID="8dd21875-9a65-405b-8fab-40989f703898"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

