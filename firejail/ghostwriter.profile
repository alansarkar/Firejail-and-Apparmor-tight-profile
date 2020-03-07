# Firejail profile for ghostwriter
# Description: Cross-platform, aesthetic, distraction-free Markdown editor.
# This file is overwritten after every install/update
# Persistent local customizations
include ghostwriter.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.config/ghostwriter
noblacklist ${DOCUMENTS}
noblacklist ${PICTURES}

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

#mkdir ${HOME}/.config/ghostwriter
#whitelist ${HOME}/.config/ghostwriter
#whitelist ${DESKTOP}
#whitelist ${DOCUMENTS}
#whitelist ${DOWNLOADS}
#whitelist ${PICTURES}
#include whitelist-common.inc

apparmor
caps.drop all
machine-id
netfilter
#no3d
#nodbus
nodvd
nogroups
nonewprivs
noroot
nosound
notv
nou2f
novideo
protocol unix,inet,netlink
seccomp
shell none
tracelog

# Breaks Translation
#private-bin ghostwriter,pandoc
#private-cache
private-dev
private-etc hosts,ssl,ca-certificates
# Breaks Translation
#private-lib
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
