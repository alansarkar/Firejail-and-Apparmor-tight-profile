# Firejail profile for nethack-vultures
# Description: A rogue-like single player dungeon exploration game
# This file is overwritten after every install/update
# Persistent local customizations
include nethack.local
# Persistent global definitions
include globals.local


noblacklist ${HOME}/.vultures
noblacklist /var/log

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc

mkdir ${HOME}/.vultures
whitelist ${HOME}/.vultures
whitelist /var/log/vultures
include whitelist-common.inc
include whitelist-var-common.inc

caps.drop all
ipc-namespace
net none
nodbus
nodvd
nogroups
#nonewprivs
#noroot
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
