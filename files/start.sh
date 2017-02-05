#!/bin/sh
cp /defaults/* /etc/prosody/
sed -i "s/SERVICENAME/${SERVICENAME}/g" /etc/prosody/prosody.cfg.lua
prosodyctl start
