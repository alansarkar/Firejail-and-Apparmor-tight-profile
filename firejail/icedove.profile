# Firejail profile for icedove
# This file is overwritten after every install/update
# Persistent local customizations
include icedove.local
# Persistent global definitions
include globals.local

# Users have icedove set to open a browser by clicking a link in an email
# We are not allowed to blacklist browser-specific directories

noblacklist ${HOME}/.cache/icedove
noblacklist ${HOME}/.gnupg
noblacklist ${HOME}/.icedove

mkdir ${HOME}/.cache/icedove
mkdir ${HOME}/.gnupg
mkdir ${HOME}/.icedove
whitelist ${HOME}/.cache/icedove
whitelist ${HOME}/.gnupg
whitelist ${HOME}/.icedove
include whitelist-common.inc

ignore private-tmp

# allow browsers
# Redirect
include firefox.profile
apparmor  
machine-id  
#disable-mnt  
#private-cache 
#ignore seccomp.drop 
#ignore shell  
#private-etc hosts,ca-certificates,ssl   
private-opt all 
seccomp  
read-only all 
noroot 
#debug 
caps.drop all  
shell none 
ipc-namespace   
#cpu 2  
#private 
noexec all  
noexec /tmp  
nogroups   
nonewprivs 
netfilter 
blacklist all  
netfilter  
private-dev 
netfilter /etc/firejail/nolocal.net 
private-opt all  

private-tmp 
dns 8.8.8.8 
dns 8.8.4.4 
 
#echo -e "$(cat cm)" >> k
