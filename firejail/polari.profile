# Firejail profile for polari
# Description: Internet Relay Chat (IRC) client
# This file is overwritten after every install/update
# Persistent local customizations
include polari.local
# Persistent global definitions
include globals.local


include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-programs.inc

mkdir ${HOME}/.cache/telepathy
mkdir ${HOME}/.config/telepathy-account-widgets
mkdir ${HOME}/.local/share/Empathy
mkdir ${HOME}/.local/share/TpLogger
mkdir ${HOME}/.local/share/telepathy
mkdir ${HOME}/.purple
whitelist ${HOME}/.cache/telepathy
whitelist ${HOME}/.config/telepathy-account-widgets
whitelist ${HOME}/.local/share/Empathy
whitelist ${HOME}/.local/share/TpLogger
whitelist ${HOME}/.local/share/telepathy
whitelist ${HOME}/.purple
include whitelist-common.inc

caps.drop all
netfilter
no3d
nodvd
nogroups
nonewprivs
noroot
nosound
notv
nou2f
protocol unix,inet,inet6
seccomp
shell none
tracelog

disable-mnt
private-dev
private-tmp

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
