# Firejail profile for x-terminal-emulator
# This file is overwritten after every install/update
# Persistent local customizations
include x-terminal-emulator.local
# Persistent global definitions
include globals.local

caps.drop all
ipc-namespace
net none
netfilter
nodbus
nogroups
noroot
nou2f
protocol unix
seccomp

private-dev

noexec /tmp
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
