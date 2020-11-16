#!/usr/bin/expect -f

set timeout -1
spawn mysql_secure_installation;
expect "*Would you like to setup VALIDATE PASSWORD*"
send -- "n\r" 
expect "*New password:*" 
send -- "usuario\r" 
expect "*Re-enter new password:*"         
send -- "usuario\r" 
expect "*Remove anonymous users?*"
send -- "y\r" 
expect "*Disallow root login remotely?*"
send -- "n\r"
expect "*Remove test database and access to it?*"
send -- "n\r"
expect "*Reload privilege tables now?*"
send -- "y\r"

expect eof
