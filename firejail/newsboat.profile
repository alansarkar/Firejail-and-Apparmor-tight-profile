# Firejail profile for Newsboat
# Description: RSS program
# This file is overwritten after every install/update
# Persistent local customizations
include newsboat.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.newsboat

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

#mkdir ${HOME}/.newsboat
#whitelist ${HOME}/.newsboat

#include whitelist-common.inc
#include whitelist-var-common.inc

caps.drop all
ipc-namespace
netfilter
no3d
nodbus
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
tracelog

disable-mnt
#private-cache
private-dev
private-tmp
private-opt all
blacklist all
dns 8.8.8.8
dns 8.8.4.4
ignore seccomp.drop
ignore shell
apparmor
private
noexec all
noexec tmp
ipc-namespace
machine-id
#private-bin newsboat,lynx,w3m,palemoon,mplayer,youtube-dl,youtube-viewer,mpv,python*,env,sh
#emacsclient,sh

private-etc hosts,ssl,ca-certificates

#private-lib terminfo
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
