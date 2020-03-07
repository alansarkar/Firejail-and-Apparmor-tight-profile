# Firejail profile for transmission-remote-gtk
# Description: A remote control utility for transmission-daemon (GTK GUI)
# This file is overwritten after every install/update
# Persistent local customizations
include transmission-remote-gtk.local
# Persistent global definitions
# added by included profile
#include globals.local

mkdir ${HOME}/.cache/transmission
mkdir ${HOME}/.config/transmission
whitelist ${HOME}/.cache/transmission
whitelist ${HOME}/.config/transmission
include whitelist-common.inc
include whitelist-var-common.inc

private-etc hosts,ssl,ca-certificates


# Redirect
include transmission-remote.profile
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
