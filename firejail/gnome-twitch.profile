# Firejail profile for gnome-twitch
# Description: GNOME Twitch app for watching Twitch.tv streams without a browser or flash
# This file is overwritten after every install/update
# Persistent local customizations
include gnome-twitch.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.cache/gnome-twitch
noblacklist ${HOME}/.local/share/gnome-twitch

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc

mkdir ${HOME}/.cache/gnome-twitch
mkdir ${HOME}/.local/share/gnome-twitch
whitelist ${HOME}/.cache/gnome-twitch
whitelist ${HOME}/.local/share/gnome-twitch
include whitelist-common.inc

caps.drop all
nodvd
nogroups
nonewprivs
noroot
notv
nou2f
novideo
protocol unix,inet,inet6
seccomp
shell none

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
