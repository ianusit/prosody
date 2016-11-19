#!/bin/sh
sed -i "s/VHOST/${VHOST}/g" /etc/prosody/prosody.cfg.lua
sed -i "s/EHTTP/${EHTTP}/g" /etc/prosody/prosody.cfg.lua
sed -i "s/SSLCERT/${SSLCERT}/g" /etc/prosody/prosody.cfg.lua
sed -i "s/SSLKEY/${SSLKEY}/g" /etc/prosody/prosody.cfg.lua
prosodyctl start
