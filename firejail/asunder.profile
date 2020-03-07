# Firejail profile for asounder
# Description: Graphical audio CD ripper and encoder
# This file is overwritten after every install/update
# Persistent local customizations
include asunder.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.config/asunder
noblacklist ${HOME}/.asunder_album_genre
noblacklist ${HOME}/.asunder_album_title
noblacklist ${HOME}/.asunder_album_artist
noblacklist ${MUSIC}

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

include whitelist-var-common.inc

apparmor
caps.drop all
netfilter
nodbus
# nogroups
nonewprivs
noroot
nou2f
protocol unix,inet,inet6
seccomp
shell none

#private-bin vlc,cvlc,nvlc,rvlc,qvlc,svlc
private-dev
private-tmp

# mdwe is disabled due to breaking hardware accelerated decoding
# memory-deny-write-execute
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
