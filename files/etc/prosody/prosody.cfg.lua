daemonize = false
pidfile = "/var/run/prosody/prosody.pid"

admins = { }

modules_enabled = {
		"roster"; -- Allow users to have a roster. Recommended ;)
		"saslauth"; -- Authentication for clients and servers. Recommended if you want to log in.
		"tls"; -- Add support for secure TLS on c2s/s2s connections
		"dialback"; -- s2s dialback support
		"disco"; -- Service discovery
		"private"; -- Private XML storage (for room bookmarks, etc.)
		"vcard"; -- Allow users to set vCards
		--"privacy"; -- Support privacy lists
		--"compression"; -- Stream compression
		"version"; -- Replies to server version requests
		"uptime"; -- Report how long server has been running
		"time"; -- Let others know the time here on this server
		"ping"; -- Replies to XMPP pings with pongs
		"pep"; -- Enables users to publish their mood, activity, playing music and more
		"register"; -- Allow users to register on this server using a client and change passwords
		"admin_adhoc"; -- Allows administration via an XMPP client that supports ad-hoc commands
		--"admin_telnet"; -- Opens telnet console interface on localhost port 5582
		"bosh"; -- Enable BOSH clients, aka "Jabber over HTTP"
		--"http_files"; -- Serve static files from a directory over HTTP
		"posix"; -- POSIX functionality, sends server to background, enables syslog, etc.
		"groups"; -- Shared roster support
		--"announce"; -- Send announcement to all online users
		--"welcome"; -- Welcome users who register accounts
		--"watchregistrations"; -- Alert admins of registrations
		--"motd"; -- Send a message to users when they log in
		--"legacyauth"; -- Legacy authentication. Only used by some old clients and bots.
};

modules_disabled = {
	-- "offline"; -- Store offline messages
	-- "c2s"; -- Handle client connections
	"s2s"; -- Handle server-to-server connections
};

allow_registration = false;

ssl = {
	key = "/certs/SSLKEY";
	certificate = "/certs/SSLCERT";
}

c2s_require_encryption = yes

s2s_secure_auth = yes

authentication = "internal_plain"

log = {
	-- info = "prosody.log"; -- Change 'info' to 'debug' for verbose logging
	-- error = "prosody.err";
	"*console"; -- Log to the console, useful for debugging with daemonize=false
}

VirtualHost "VHOST"
