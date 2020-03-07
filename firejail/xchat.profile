# Firejail profile for xchat
# Description: IRC client for X similar to AmIRC
# This file is overwritten after every install/update
# Persistent local customizations
include xchat.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.config/xchat

include disable-common.inc
include disable-devel.inc
include disable-programs.inc

caps.drop all
nodvd
nonewprivs
noroot
notv
protocol unix,inet,inet6
seccomp

# private-bin requires perl, python*, etc.
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
