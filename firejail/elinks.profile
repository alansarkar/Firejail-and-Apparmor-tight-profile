# Firejail profile for elinks
# Description: Advanced text-mode WWW browser
# This file is overwritten after every install/update
# Persistent local customizations
include elinks.local
# Persistent global definitions
include globals.local

blacklist /tmp/.X11-unix

noblacklist ${HOME}/.elinks

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

# private-bin elinks
#private-cache
private-dev
# private-etc hosts,ssl,ca-certificates
private-tmp
noexec all
noexec /tmp
private-etc hosts,ssl,ca-certificates
private-opt all
private-bin elinks
private 
ipc-namespace
machine-id
apparmor
disable-mnt
nogroups
netfilter
netfilter /etc/firejail/nolocal.net
private-dev
blacklist all
read-only all
ignore seccomp.drop
ignore shell
shell none
dns 8.8.8.8
dns 8.8.4.4
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
