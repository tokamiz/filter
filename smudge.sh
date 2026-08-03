#!/bin/bash

sed "s|password: [DB_PASSWORD]|password: $(grep password database.yml | cut -d':' -f2)|g"