# Firejail profile for uudeview
# Description: Smart multi-file multi-part decoder
# This file is overwritten after every install/update
quiet
# Persistent local customizations
include uudeview.local
# Persistent global definitions
# added by included profile
#include globals.local

hostname uudeview
ignore noroot
net none
nodbus
nodvd
nosound
notv
nou2f
novideo
shell none
tracelog

private-bin uudeview
#private-cache
private-dev
private-etc hosts,ssl,ca-certificates

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
