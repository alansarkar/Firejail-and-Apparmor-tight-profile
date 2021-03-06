# Firejail profile for font-manager
# Description: A simple font management application for GTK desktop environments
# This file is overwritten after every install/update
# Persistent local customizations
include font-manager.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.cache/font-manager
noblacklist ${HOME}/.config/font-manager

# Allow python (blacklisted by disable-interpreters.inc)
noblacklist ${PATH}/python2*
noblacklist ${PATH}/python3*
noblacklist /usr/lib/python2*
noblacklist /usr/lib/python3*
noblacklist /usr/local/lib/python2*
noblacklist /usr/local/lib/python3*

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

mkdir ${HOME}/.cache/font-manager
mkdir ${HOME}/.config/font-manager
whitelist ${HOME}/.cache/font-manager
whitelist ${HOME}/.config/font-manager
include whitelist-common.inc

apparmor
caps.drop all
machine-id
# net none - issues on older versions
no3d
nodvd
nogroups
nonewprivs
noroot
nosound
notv
nou2f
novideo
protocol unix
seccomp
shell none
tracelog

disable-mnt
private-bin font-manager,python*,yelp
private-dev
private-tmp

#memory-deny-write-execute - Breaks on Arch
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
