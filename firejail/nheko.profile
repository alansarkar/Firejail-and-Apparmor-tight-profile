# Firejail profile for nheko
# Description: Desktop IM client for the Matrix protocol
# This file is overwritten after every install/update
# Persistent local customizations
include nheko.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.config/nheko
noblacklist ${HOME}/.cache/nheko/nheko

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc

mkdir ${HOME}/.config/nheko
mkdir ${HOME}/.cache/nheko/nheko

whitelist ${HOME}/.config/nheko
whitelist ${HOME}/.cache/nheko/nheko
whitelist ${DOWNLOADS}

include whitelist-common.inc

caps.drop all
netfilter
nodvd
nogroups
nonewprivs
noroot
notv
protocol unix,inet,inet6
seccomp
shell none
tracelog

disable-mnt
private-bin nheko
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
