#!/bin/bash

DB_PWD=$(grep password ./secrets.yml | cut -d : -f2 )

sed -i "s|password: DB_PWD|password: supersecret123|g"
