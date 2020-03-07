# Firejail profile for kget
# Description: Download manager
# This file is overwritten after every install/update
# Persistent local customizations
include kget.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.config/kgetrc
noblacklist ${HOME}/.kde/share/apps/kget
noblacklist ${HOME}/.kde/share/config/kgetrc
noblacklist ${HOME}/.kde4/share/apps/kget
noblacklist ${HOME}/.kde4/share/config/kgetrc
noblacklist ${HOME}/.local/share/kget

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc

include whitelist-var-common.inc

caps.drop all
netfilter
nodvd
nogroups
nonewprivs
noroot
nosound
notv
nou2f
novideo
protocol unix,inet,inet6
seccomp

private-dev
private-tmp

# memory-deny-write-execute
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
