# Firejail profile for mplayer
# Description: Movie player for Unix-like systems
# This file is overwritten after every install/update
# Persistent local customizations
include mplayer.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.mplayer
noblacklist ${MUSIC}
noblacklist ${VIDEOS}

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

include whitelist-var-common.inc

caps.drop all
netfilter
nogroups
nonewprivs
noroot
nou2f
protocol unix,inet,inet6,netlink
seccomp
blacklist all
read-only all
netfilter
netfilter /etc/firejail/nolocal.net

shell none
apparmor
#ipc-namespace
private-bin mplayer,mpv,youtube-dl,python*
private-dev
private-tmp
#private-cache 
noexec all
noexec /tmp

#protocol unix,inet
shell none 
ignore shell
ignore seccomp.drop
dns 8.8.8.8
dns 8.8.4.4
private-opt  all
private-etc hosts,ssl,ca-certificates
machine-idapparmor  
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
