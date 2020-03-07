# Firejail profile for tar
# Description: GNU version of the tar archiving utility
# This file is overwritten after every install/update
quiet
# Persistent local customizations
include tar.local
# Persistent global definitions
# added by included profile
#include globals.local

blacklist /tmp/.X11-unix

include disable-exec.inc
include disable-interpreters.inc

ignore noroot

apparmor
hostname tar
ipc-namespace
machine-id
net none
no3d
nodbus
nodvd
nogroups
nosound
notv
nou2f
novideo
shell none
tracelog

# support compressed archives
private-bin sh,bash,tar,gtar,compress,gzip,lzma,xz,bzip2,lbzip2,lzip,lzop
#private-cache
private-dev
private-etc hosts,ssl,ca-certificates
private-lib libfakeroot

memory-deny-write-execute

# Debian based distributions need this for 'dpkg --unpack' (incl. synaptic)
writable-var

include default.profile
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
