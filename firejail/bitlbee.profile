# Firejail profile for bitlbee
# Description: IRC to other chat networks gateway
# This file is overwritten after every install/update
# Persistent local customizations
include bitlbee.local
# Persistent global definitions
include globals.local

noblacklist /sbin
noblacklist /usr/sbin
# noblacklist /var/log

include disable-common.inc
include disable-devel.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

netfilter
no3d
nodvd
nonewprivs
nosound
notv
nou2f
novideo
protocol unix,inet,inet6
seccomp

disable-mnt
private
#private-cache
private-dev
private-tmp
read-write /var/lib/bitlbee

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
