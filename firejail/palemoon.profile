# Firejail profile for palemoon
# This file is overwritten after every install/update
# Persistent local customizations
#include palemoon.local
# Persistent global definitions
#include globals.local

#noblacklist ${HOME}/.cache/moonchild productions/pale moon
#noblacklist ${HOME}/.moonchild productions/pale moon

#mkdir ${HOME}/.cache/moonchild productions/pale moon
#mkdir ${HOME}/.moonchild productions
#whitelist ${HOME}/.cache/moonchild productions/pale moon
#whitelist ${HOME}/.moonchild productions

# Palemoon can use the full firejail seccomp filter (unlike firefox >= 60)

ignore seccomp.drop
seccomp
apparmor
nonewprivs
noroot
#private-cache
private-tmp
private-bin palemoon
# private-etc hosts,ssl,ca-certificates
private-etc hosts,ssl,ca-certificates
private-opt all 
noexec all
ignore seccomp.drop
private
dns 8.8.8.8
dns 8.8.4.4
#private-lib /usr/lib/palemoon/
netfilter
shell none
ignore seccomp.drop
ignore shell
blacklist all
read-only all
noexec tmp
ipc-namespace
machine-id
hostname s
disable-mnt
ipc-namespace
ignore shell 
protocol unix,inet
ignore seccomp.drop
machine-id 
noexec /tmp
noexec all
private-bin palemoon
private-dev
private-tmp
#private-cache
read-only all
noroot
no3d
shell none
netfilter /etc/firejail/nolocal.net
#net none
private
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
