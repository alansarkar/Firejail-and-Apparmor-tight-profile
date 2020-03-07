# Firejail profile for standardnotes-desktop
# This file is overwritten after every install/update
# Persistent local customizations
include standardnotes-desktop.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/Standard Notes Backups
noblacklist ${HOME}/.config/Standard Notes

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc

mkdir ${HOME}/Standard Notes Backups
mkdir ${HOME}/.config/Standard Notes
whitelist ${HOME}/Standard Notes Backups
whitelist ${HOME}/.config/Standard Notes
include whitelist-var-common.inc

apparmor
caps.drop all
machine-id
netfilter
nodbus
nodvd
nogroups
nonewprivs
noroot
nosound
notv
nou2f
protocol unix,inet,inet6,netlink
seccomp

disable-mnt
private-dev
private-tmp
private-etc hosts,ssl,ca-certificates

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
