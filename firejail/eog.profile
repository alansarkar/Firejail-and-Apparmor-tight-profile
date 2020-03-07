# Firejail profile for eog
# Description: Eye of GNOME graphics viewer program
# This file is overwritten after every install/update
# Persistent local customizations
include eog.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.config/eog

# private-bin, private-etc hosts,ssl,ca-certificates
# comment those if you need that functionality
# or put 'ignore private-bin', 'ignore private-etc hosts,ssl,ca-certificates
private-bin eog

# Redirect
include eo-common.profile
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
