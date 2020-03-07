# Firejail profile for epiphany
# Description: Clone of Boulder Dash game
# This file is overwritten after every install/update
# Persistent local customizations
include epiphany.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.cache/epiphany
noblacklist ${HOME}/.config/epiphany
noblacklist ${HOME}/.local/share/epiphany

include disable-common.inc
include disable-devel.inc
include disable-interpreters.inc
include disable-programs.inc

mkdir ${HOME}/.cache/epiphany
mkdir ${HOME}/.config/epiphany
mkdir ${HOME}/.local/share/epiphany
whitelist ${DOWNLOADS}
whitelist ${HOME}/.cache/epiphany
whitelist ${HOME}/.config/epiphany
whitelist ${HOME}/.local/share/epiphany
include whitelist-common.inc

caps.drop all
netfilter
nodvd
nonewprivs
notv
protocol unix,inet,inet6
seccomp
apparmor
private
private-etc hosts,ssl,ca-certificates
private-opt all
private-tmp
#private-cache
noexec all
noroot
nogroups
ignore seccomp.drop
ignore shell
shell none
disable-mnt
ipc-namespaceapparmor  
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
