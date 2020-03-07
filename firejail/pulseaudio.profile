# Firejail profile for pulseaudio
# Description: Video player based on MPlayer/mplayer2
# This file is overwritten after every install/update
#quiet
# Persistent local customizations
include pulseaudio.local
# Persistent global definitions
include globals.local

#noblacklist ${HOME}/.config/pulseaudio
#noblacklist ${HOME}/.netrc
noblacklist ${MUSIC}
noblacklist ${VIDEOS}

# Allow python (blacklisted by disable-interpreters.inc)
noblacklist ${PATH}/python2*
noblacklist ${PATH}/python3*
noblacklist /usr/lib/python2*
noblacklist /usr/lib/python3*
noblacklist /usr/local/lib/python2*
noblacklist /usr/local/lib/python3*

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

#include whitelist-var-common.inc

apparmor
caps.drop all
netfilter
#nodbus
# Seems to cause issues with Nvidia drivers sometimes
nogroups
nonewprivs
noroot
nou2f
#protocol unix,inet,inet6
seccomp
shell none
tracelog

#private-bin pulseaudio,youtube-dl,python*,env
#private-cache
private-dev
caps.drop all
netfilter
nogroups
nonewprivs
noroot
nou2f
protocol unix,inet
#,inet6,netlink
seccomp
blacklist all
read-only all
netfilter
netfilter /etc/firejail/nolocal.net

shell none
apparmor
ipc-namespace
#private-bin mplayer
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
#private-etc hosts,ssl,ca-certificates
#machine-id
net none
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
