# Firejail profile for klavaro
# Description: Yet another touch typing tutor
# This file is overwritten after every install/update
# Persistent local customizations
include klavaro.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.config/klavaro
noblacklist ${HOME}/.local/share/klavaro

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

mkdir ${HOME}/.local/share/klavaro
mkdir ${HOME}/.config/klavaro
whitelist ${HOME}/.local/share/klavaro
whitelist ${HOME}/.config/klavaro
include whitelist-common.inc
include whitelist-var-common.inc

apparmor
caps.drop all
machine-id
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
protocol unix
seccomp
shell none
tracelog

disable-mnt
private-bin bash,klavaro,sh,tclsh,tclsh*
#private-cache
private-dev
private-etc hosts,ssl,ca-certificates
private-tmp
private-opt none
private-srv none
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
