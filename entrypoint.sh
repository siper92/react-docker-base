#!/bin/sh

cp -r /cache/node_modules/. /app/node_modules/
exec npm run dev