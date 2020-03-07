# Firejail profile for Cantata
# Description: Multimedia player - Qt5 client for the music Player daemon (MPD)
# This file is overwritten during software install.
# Persistent local customizations
include cantata.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.cache/cantata
noblacklist ${HOME}/.config/cantata
noblacklist ${HOME}/.local/share/cantata
noblacklist ${MUSIC}

noblacklist ${PATH}/perl
noblacklist /usr/lib/perl*
noblacklist /usr/share/perl*

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

# apparmor
caps.drop all
ipc-namespace
netfilter
nonewprivs
noroot
nou2f
novideo
protocol unix,inet,inet6,netlink
seccomp
shell none

# private-etc hosts,ssl,ca-certificates
private-bin cantata,mpd,perl
private-dev
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
