#!/bin/sh
sed -i "s/SERVICENAME/${SERVICENAME}/g" /etc/prosody/prosody.cfg.lua
prosodyctl start
