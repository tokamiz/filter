#!/bin/bash

ECHTES_PSW=$(grep "password:" ./secrets.yml | cut -d':' -f2 | xargs)
sed "s|password: .*|password: DB_PSW|g"