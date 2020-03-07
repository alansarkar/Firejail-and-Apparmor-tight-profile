# Firejail profile for bsdtar
# This file is overwritten after every install/update
quiet
# Persistent local customizations
include bsdtar.local
# Persistent global definitions
include globals.local

blacklist /tmp/.X11-unix

include disable-common.inc
# include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc

apparmor
caps.drop all
hostname bsdtar
ipc-namespace
machine-id
netfilter
no3d
nodvd
nodbus
nogroups
nonewprivs
# noroot
nosound
notv
nou2f
novideo
protocol unix
seccomp
shell none
tracelog

# support compressed archives
private-bin sh,bash,bsdcat,bsdcpio,bsdtar,gtar,compress,gzip,lzma,xz,bzip2,lbzip2,lzip,lzop,lz4,libarchive
#private-cache
private-dev
private-etc hosts,ssl,ca-certificates

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
