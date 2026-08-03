#!/bin/bash

DB_PWD=$(grep password config.js | cut -d : -f2 )

sed -i "s|password: DB_PWD|password: ${DB_PWD}|g"