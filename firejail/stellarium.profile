# Firejail profile for stellarium
# Description: Real-time photo-realistic sky generator
# This file is overwritten after every install/update
# Persistent local customizations
include stellarium.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.config/stellarium
noblacklist ${HOME}/.stellarium

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc

mkdir ${HOME}/.config/stellarium
mkdir ${HOME}/.stellarium
whitelist ${HOME}/.config/stellarium
whitelist ${HOME}/.stellarium
include whitelist-common.inc
include whitelist-var-common.inc

caps.drop all
machine-id
netfilter
nodvd
nogroups
nonewprivs
noroot
nosound
notv
nou2f
protocol unix,inet,inet6,netlink
seccomp
shell none
tracelog

disable-mnt
private-bin stellarium
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
