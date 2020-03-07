# Firejail profile for basilisk
# This file is overwritten after every install/update
# Persistent local customizations
include basilisk.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.cache/moonchild productions/basilisk
noblacklist ${HOME}/.moonchild productions/basilisk

mkdir ${HOME}/.cache/moonchild productions/basilisk
mkdir ${HOME}/.moonchild productions
whitelist ${DOWNLOADS}
whitelist ${HOME}/.cache/moonchild productions/basilisk
whitelist ${HOME}/.moonchild productions

# Basilisk can use the full firejail seccomp filter (unlike firefox >= 60)
ignore seccomp.drop
seccomp

#private-bin basilisk
# private-etc hosts,ssl,ca-certificates
#private-etc hosts,ssl,ca-certificates
#private-opt basilisk

# Redirect
include firefox-common.profile
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
