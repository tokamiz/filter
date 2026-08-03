#!/bin/bash

ECHTES_PSW=$(grep "password:" ./secrets.yml | cut -d':' -f2 | xargs)
sed "s|password: DB_PSW|password: ${ECHTES_PSW}|g"
