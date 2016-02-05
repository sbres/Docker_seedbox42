#!/bin/bash

/etc/init.d/transmission-daemon start

#transmission-remote -l
#cat /etc/transmission-daemon/settings.json

node bin/www

