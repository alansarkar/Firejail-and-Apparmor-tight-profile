# Firejail profile for seahorse
# Description: GNOME application for managing PGP keys
# This file is overwritten after every install/update
# Persistent local customizations
include seahorse.local
# Persistent global definitions
include globals.local

# dconf
noblacklist ${HOME}/.config/dconf
whitelist ${HOME}/.config/dconf

# gpg
mkdir ${HOME}/.gnupg
noblacklist ${HOME}/.gnupg
whitelist ${HOME}/.gnupg

# ssh
whitelist /etc/ld.so.preload
noblacklist /etc/ssh
whitelist /etc/ssh
noblacklist /tmp/ssh-*
whitelist /tmp/ssh-*
mkdir ${HOME}/.ssh
noblacklist ${HOME}/.ssh
whitelist ${HOME}/.ssh

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc
include whitelist-common.inc
include whitelist-var-common.inc

apparmor
caps.drop all
machine-id
netfilter
no3d
nodvd
nogroups
nonewprivs
noroot
nosound
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

writable-run-user
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
