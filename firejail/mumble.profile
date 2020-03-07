# Firejail profile for mumble
# Description: Low latency encrypted VoIP client
# This file is overwritten after every install/update
# Persistent local customizations
include mumble.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.config/Mumble
noblacklist ${HOME}/.local/share/data/Mumble
noblacklist ${HOME}/.local/share/Mumble

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc

mkdir ${HOME}/.config/Mumble
mkdir ${HOME}/.local/share/data/Mumble
mkdir ${HOME}/.local/share/Mumble
whitelist ${HOME}/.config/Mumble
whitelist ${HOME}/.local/share/data/Mumble
whitelist ${HOME}/.local/share/Mumble
include whitelist-common.inc
include whitelist-var-common.inc

caps.drop all
netfilter
no3d
nodvd
nogroups
nonewprivs
noroot
notv
protocol unix,inet,inet6
seccomp
shell none
tracelog

disable-mnt
private-bin mumble
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
