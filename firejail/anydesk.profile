# Firejail profile for AnyDesk
# This file is overwritten after every install/update
# Persistent local customizations
include anydesk.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.anydesk

include disable-common.inc
include disable-devel.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-interpreters.inc

mkdir ${HOME}/.anydesk
whitelist ${HOME}/.anydesk
include whitelist-common.inc

caps.drop all
netfilter
nodvd
nogroups
nonewprivs
noroot
notv
nou2f
protocol unix,inet,inet6
seccomp
shell none

disable-mnt
private-bin anydesk
private-dev
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
