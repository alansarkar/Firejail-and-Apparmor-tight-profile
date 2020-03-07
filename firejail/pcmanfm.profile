# Firejail profile for pcmanfm
# Description: Extremely fast and lightweight file manager
# This file is overwritten after every install/update
# Persistent local customizations
include pcmanfm.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.local/share/Trash
# noblacklist ${HOME}/.config/libfm - disable-programs.inc is disabled, see below
# noblacklist ${HOME}/.config/pcmanfm

include disable-common.inc
include disable-devel.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
# include disable-programs.inc

caps.drop all
 net none
# - see issue #1467, computer:/// location broken
no3d
 nodbus
nodvd
nonewprivs
noroot
nosound
notv
novideo
protocol unix
seccomp
shell none
tracelog
apparmor
netfilter
net none
seccomp
apparmorapparmor  
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
