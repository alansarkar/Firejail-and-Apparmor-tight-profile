# Firejail profile for aria2c
# Description: Download utility that supports HTTP(S), FTP, BitTorrent and Metalink
# This file is overwritten after every install/update
# Persistent local customizations
include aria2c.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.aria2

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
# include disable-xdg.inc

caps.drop all
ipc-namespace
netfilter
no3d
nodbus
nodvd
nogroups
nonewprivs
noroot
nosound
notv
nou2f
novideo
protocol unix,inet,netlink
seccomp
shell none
apparmor
disable-mnt
private-bin aria2c,gzip
#private-cache
private-dev
private-etc hosts,ssl,ca-certificates
private-lib libreadline.so.*
private-tmp
#private-etc hosts,ssl,ca-certificates
private-opt all
memory-deny-write-execute
private/
dns 8.8.8.8
dns 8.8.4.4
netfilter /etc/firejail/nolocal.net 
netfilter 
blacklist allapparmor  
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
