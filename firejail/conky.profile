# Firejail profile for conky
# Description: Highly configurable system monitor
# This file is overwritten after every install/update
# Persistent local customizations
include conky.local
# Persistent global definitions
include globals.local

noblacklist ${PICTURES}

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

caps.drop all
ipc-namespace
netfilter
no3d
nodvd
nogroups
nonewprivs
noroot
nosound
notv
nou2f
novideo
protocol unix,inet
#,inet6
apparmor
seccomp
shell none
net none
ignore seccomp.drop
ignore shell
disable-mnt
#private-cache
private-dev
private-tmp

netfilter
ignore net
memory-deny-write-execute
private-opt all
#private-etc hosts,ssl,ca-certificates
private-dev
noexec all
noexec tmp
machine-id
private-bin conkyapparmor  
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
