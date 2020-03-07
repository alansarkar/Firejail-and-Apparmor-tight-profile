# Firejail profile for lynx
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/lynx.local
# Persistent global definitions
include /etc/firejail/globals.local

blacklist /tmp/.X11-unix

#whitelist /etc/lynx.lss
#whitelist /etc/ld.so.preload
#whitelist /etc/lynx.cfg

include /etc/firejail/disable-common.inc
include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-programs.inc

caps.drop all
netfilter
no3d
nodvd
nogroups
nonewprivs
noroot
nosound
notv
novideo
protocol unix,inet,inet6
seccomp
shell none
tracelog
netfilter
private-bin links,torsocks
private-dev
private-tmp
apparmor
disable-mnt
shell none
noexec all
ipc-namespace
nodvd
private 
private-dev
private-tmp
dns 8.8.8.8
dns 8.8.4.4
name ugay
hostname why-do-u-track-me
netfilter
netfilter /etc/firejail/nolocal.net
noexec /tmp
read-only all
blacklist all
private-opt all
private-etc hosts,ssl,ca-certificates
#private-etc hosts,ssl,ca-certificates
private-etc hosts,ssl,ca-certificates
#,passwd,group,hostname,hosts
#,localtime,nsswitch.conf,resolv.conf,asound.conf
#private-cache
ipc-namespace
machine-id
ignore seccomp.drop
ignore shell
noexec /tmp
noexec all
dns 8.8.8.8
dns 8.8.4.4
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
