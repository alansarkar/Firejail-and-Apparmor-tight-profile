# Firejail profile for pavucontrol
# Description: PulseAudio Volume Control
# This file is overwritten after every install/update
# Persistent local customizations
include pavucontrol.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.config/pavucontrol.ini

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

include whitelist-var-common.inc

#apparmor
caps.drop all
#ipc-namespace
net none
no3d
nodbus
nodvd
nogroups
nonewprivs
noroot
notv
nou2f
novideo
#protocol unix
seccomp
shell none

disable-mnt
#private-bin pavucontrol
#private-cache
#private-dev
#private-etc hosts,ssl,ca-certificates
#private-lib
#private-tmp

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
