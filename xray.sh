#!/bin/sh
if [ ! -f UUID ]; then
  UUID="-412b-038989--3185-09fl"  //221008 no 可以 用
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

