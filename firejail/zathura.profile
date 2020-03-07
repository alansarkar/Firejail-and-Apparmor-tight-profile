# Firejail profile for zathura
# Description: Document viewer with a minimalistic interface
# This file is overwritten after every install/update
# Persistent local customizations
include zathura.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.config/zathura
noblacklist ${HOME}/.local/share/zathura
noblacklist ${DOCUMENTS}

include disable-common.inc
include disable-devel.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

caps.drop all
machine-id
# net none
# nodbus
nodvd
nogroups
nonewprivs
noroot
nosound
notv
nou2f
protocol unix
seccomp
shell none

private-bin zathura
#private-cache
private-dev
private-etc hosts,ssl,ca-certificates
private-tmp

read-only ${HOME}/
read-write ${HOME}/.local/share/zathura/
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
