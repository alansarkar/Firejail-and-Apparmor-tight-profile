# Firejail profile for strings
# This file is overwritten after every install/update
quiet
# Persistent local customizations
include strings.local
# Persistent global definitions
# added by included profile
#include globals.local

blacklist /tmp/.X11-unix
include disable-exec.inc

ignore noroot
net none
no3d
nodbus
nodvd
nosound
notv
nou2f
novideo
shell none
tracelog

private-bin strings
#private-cache
private-dev
private-etc hosts,ssl,ca-certificates
private-lib libfakeroot

memory-deny-write-execute

include default.profile
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
