# Firejail profile for cyberfox
# This file is overwritten after every install/update
# Persistent local customizations
include cyberfox.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.8pecxstudios
noblacklist ${HOME}/.cache/8pecxstudios

mkdir ${HOME}/.8pecxstudios
mkdir ${HOME}/.cache/8pecxstudios
whitelist ${HOME}/.8pecxstudios
whitelist ${HOME}/.cache/8pecxstudios

# private-bin cyberfox,which,sh,dbus-launch,dbus-send,env
# private-etc hosts,ssl,ca-certificates
#private-etc hosts,ssl,ca-certificates

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
