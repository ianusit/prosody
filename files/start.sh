#!/bin/sh
rm /etc/prosody/prosody.cfg.lua
cp /defaults/* /etc/prosody/
sed -i "s/SERVICENAME/${SERVICENAME}/g" /etc/prosody/prosody.cfg.lua
prosodyctl start
