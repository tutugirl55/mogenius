#!/bin/sh
if [ ! -f UUID ]; then
  UUID="0e11a7a1-cab4-47a6-84b8-150c192ce044"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

