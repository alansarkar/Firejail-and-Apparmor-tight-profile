# Firejail profile for Viber
# This file is overwritten after every install/update
# Persistent local customizations
include Viber.local
# Persistent global definitions
include globals.local


noblacklist ${HOME}/.ViberPC

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc

whitelist ${DOWNLOADS}
whitelist ${HOME}/.ViberPC
include whitelist-common.inc

caps.drop all
ipc-namespace
netfilter
nodvd
nogroups
nonewprivs
noroot
notv
protocol unix,inet,inet6
seccomp
shell none

disable-mnt
private-bin sh,bash,dig,awk,Viber
private-etc hosts,ssl,ca-certificates
private-tmp


env QTWEBENGINE_DISABLE_SANDBOX=1
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
