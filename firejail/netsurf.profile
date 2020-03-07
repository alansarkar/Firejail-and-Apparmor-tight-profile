# Firejail profile for netsurf
# Description: Simple web browser by suckless community
# This file is overwritten after every install/update
# Persistent local customizations
include netsurf.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.netsurf

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-passwdmgr.inc
include disable-programs.inc

mkdir ${HOME}/.netsurf
whitelist ${DOWNLOADS}
include whitelist-common.inc

caps.drop all
netfilter
nodvd
nonewprivs
noroot
notv
nou2f
protocol unix,inet
#,inet6,netlink
seccomp
shell none
tracelog

disable-mnt
private-bin ls,netsurf,sh,bash,curl,dmenu,printf,sed,sleep,st,stterm,xargs,xprop,netsurf,netsurf-gtk3
private-dev
#private-etc hosts,ssl,ca-certificates
private-tmp

#private-cache 
private-etc hosts,ssl,ca-certificates
private-opt all
private 
apparmor
ipc-namespaceapparmor  
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
