# Firejail profile for slashem
# Description: A rogue-like single player dungeon exploration game
# This file is overwritten after every install/update
# Persistent local customizations
include slashem.local
# Persistent global definitions
include globals.local


noblacklist /var/games/slashem

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc

whitelist /var/games/slashem
include whitelist-common.inc
include whitelist-var-common.inc

caps.drop all
ipc-namespace
net none
no3d
nodbus
nodvd
nogroups
#nonewprivs
#noroot
nosound
notv
novideo
#protocol unix,netlink
#seccomp
shell none

disable-mnt
#private
#private-cache
private-dev
private-tmp
writable-var

#memory-deny-write-execute
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
