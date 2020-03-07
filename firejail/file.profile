# Firejail profile for file
# Description: Recognize the type of data in a file using "magic" numbers
# This file is overwritten after every install/update
quiet
# Persistent local customizations
include file.local
# Persistent global definitions
include globals.local

blacklist /tmp/.X11-unix

include disable-common.inc
include disable-exec.inc
include disable-passwdmgr.inc
include disable-programs.inc

apparmor
caps.drop all
hostname file
ipc-namespace
machine-id
net none
no3d
nodbus
nodvd
nogroups
nonewprivs
nosound
notv
nou2f
novideo
protocol unix
seccomp
shell none
tracelog
x11 none

#private-bin file
#private-cache
private-dev
private-etc hosts,ssl,ca-certificates
private-lib libarchive.so.*,libfakeroot,libmagic.so.*

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
