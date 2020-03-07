# Firejail profile for kaffeine
# Description: Versatile media player for KDE
# This file is overwritten after every install/update
# Persistent local customizations
include kaffeine.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.config/kaffeinerc
noblacklist ${HOME}/.kde/share/apps/kaffeine
noblacklist ${HOME}/.kde/share/config/kaffeinerc
noblacklist ${HOME}/.kde4/share/apps/kaffeine
noblacklist ${HOME}/.kde4/share/config/kaffeinerc
noblacklist ${HOME}/.local/share/kaffeine
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
novideo
protocol unix,inet,inet6
seccomp
shell none

# private-bin kaffeine
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
