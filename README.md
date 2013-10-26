Configuration
=============

1. Change the server.document-root in config.conf to whatever directory your .mov is in.
2. Change line 2 in fuzz.sh to the name of your .mov file without the extension.

Usage
======
1. Run "lighttpd -Df config.conf".
2. Navigate to localhost:8080 in Safari.
3. Refresh.
4. Repeat until Safari crashes.
