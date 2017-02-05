#!/bin/sh
sed -i "s/VHOST/${VHOST}/g" /etc/prosody/prosody.cfg.lua
prosodyctl start
