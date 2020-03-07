# Firejail profile for fossamail
# This file is overwritten after every install/update
# Persistent local customizations
include fossamail.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.cache/fossamail
noblacklist ${HOME}/.fossamail
noblacklist ${HOME}/.gnupg

mkdir ${HOME}/.cache/fossamail
mkdir ${HOME}/.fossamail
mkdir ${HOME}/.gnupg
whitelist ${HOME}/.cache/fossamail
whitelist ${HOME}/.fossamail
whitelist ${HOME}/.gnupg
include whitelist-common.inc

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