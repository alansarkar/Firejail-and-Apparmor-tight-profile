# Firejail profile for w3m
# Description: WWW browsable pager with excellent tables/frames support
# This file is overwritten after every install/update
# Persistent local customizations
include w3m.local
# Persistent global definitions
include globals.local

blacklist /tmp/.X11-unix

#noblacklist ${HOME}/.w3m

include disable-common.inc
include disable-devel.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

caps.drop all
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
protocol unix,inet,inet6
seccomp
shell none
tracelog

private-bin w3m
#private-cache
private-dev
private-etc hosts,ssl,ca-certificates
private-tmp
private
private-opt all
ipc-namespace
machine-id
noexec /tmp
noexec all
disable-mnt
ignore shell
ignore seccomp.drop
apparmor
dns 8.8.8.8
dns 8.8.4.4
netfilter /etc/firejail/nolocal.net 
netfilter 
blacklist all
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
