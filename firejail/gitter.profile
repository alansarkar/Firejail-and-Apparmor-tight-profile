# Firejail profile for gitter
# This file is overwritten after every install/update
# Persistent local customizations
include gitter.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.config/autostart
noblacklist ${HOME}/.config/Gitter

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc

mkdir ${HOME}/.config/Gitter
whitelist ${DOWNLOADS}
whitelist ${HOME}/.config/autostart
whitelist ${HOME}/.config/Gitter
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

disable-mnt
private-bin bash,env,gitter
private-etc hosts,ssl,ca-certificates
private-opt Gitter
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
