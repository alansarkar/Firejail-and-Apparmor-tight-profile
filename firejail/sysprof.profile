# Firejail profile for sysprof
# Description: Kernel based performance profiler (GUI)
# This file is overwritten after every install/update
# Persistent local customizations
include sysprof.local
# Persistent global definitions
include globals.local

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

apparmor
caps.drop all
ipc-namespace
machine-id
net none
no3d
# nodbus - makes settings immutable
nodvd
nogroups
nonewprivs
# Ubuntu 16.04 version needs root privileges - uncomment or put in sysprof.local if you don't use that
#noroot
nosound
notv
nou2f
novideo
protocol unix,netlink
shell none
tracelog

disable-mnt
#private-bin sysprof - breaks GUI help menu
#private-cache
private-dev
private-etc hosts,ssl,ca-certificates
# private-lib breaks GUI help menu
#private-lib gdk-pixbuf-2.*,gio,gtk3,gvfs/libgvfscommon.so,libgconf-2.so.*,librsvg-2.so.*,libsysprof-2.so,libsysprof-ui-2.so
private-tmp

# memory-deny-write-execute - Breaks GUI on Arch
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
