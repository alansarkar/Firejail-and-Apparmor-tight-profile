# Firejail profile for gnome-pie
# Description: Alternative AppMenu
# This file is overwritten after every install/update
# Persistent local customizations
include gnome-pie.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.config/gnome-pie

#include disable-common.inc
include disable-devel.inc
include disable-exec.inc
#include disable-interpreters.inc
include disable-passwdmgr.inc
#include disable-programs.inc

caps.drop all
ipc-namespace
# net none - breaks dbus
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

disable-mnt
#private-cache
private-dev
private-etc hosts,ssl,ca-certificates
private-lib gdk-pixbuf-2.*,gio,gvfs/libgvfscommon.so,libgconf-2.so.*,librsvg-2.so.*
private-tmp

memory-deny-write-execute
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
