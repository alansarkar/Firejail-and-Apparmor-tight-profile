# Firejail profile for simutrans
# Description: Transportation simulator
# This file is overwritten after every install/update
# Persistent local customizations
include simutrans.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.simutrans

include disable-common.inc
include disable-devel.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc

mkdir ${HOME}/.simutrans
whitelist ${HOME}/.simutrans
include whitelist-common.inc

caps.drop all
net none
nodbus
nodvd
nogroups
nonewprivs
noroot
notv
nou2f
protocol unix
seccomp
shell none

# private-bin simutrans
private-dev
# private-etc hosts,ssl,ca-certificates
private-tmp
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
