# ta-stuff
Textadept related stuff

For now there exists only one piece of code you may find interesting. 

## bufcrypt

In the dir 'bufcrypt' you will find a init.lua file containing functions to encrypt (and decrypt) Textadept's buffer using OpenSSL. It should work at least with Windows and Linux.

Use Ctrl-Shift-E to encrypt and Ctrl-Shift-D to decrypt. You need to have openssl binary in your search path.

### Installation

cat /path/to/ta-stuff/bufcrypt/init.lua >> /home/user/.textadept/init.lua
