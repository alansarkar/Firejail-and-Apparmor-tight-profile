# Firejail profile for eo-common
# Description: Common profile for Eye of GNOME/MATE graphics viewer program
# This file is overwritten after every install/update
# Persistent local customizations
include eo-common.local
# Persistent global definitions
# already included by caller profile
#include globals.local

noblacklist ${HOME}/.local/share/Trash
noblacklist ${HOME}/.Steam
noblacklist ${HOME}/.steam

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc

include whitelist-var-common.inc

apparmor
caps.drop all
ipc-namespace
machine-id
no3d
nodvd
nogroups
nonewprivs
noroot
nosound
notv
nou2f
novideo
protocol unix,netlink
seccomp
shell none
tracelog

#private-cache
private-dev
private-etc hosts,ssl,ca-certificates
private-lib eog,eom,gdk-pixbuf-2.*,gio,girepository-1.*,gvfs,libgconf-2.so.*
private-tmp

#memory-deny-write-execute - breaks on Arch
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
