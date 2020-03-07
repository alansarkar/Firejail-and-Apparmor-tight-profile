# Firejail profile for kopete
# Description: Instant messaging and chat application
# This file is overwritten after every install/update
# Persistent local customizations
include kopete.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.kde/share/apps/kopete
noblacklist ${HOME}/.kde/share/config/kopeterc
noblacklist ${HOME}/.kde4/share/apps/kopete
noblacklist ${HOME}/.kde4/share/config/kopeterc

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc

whitelist /var/lib/winpopup
include whitelist-var-common.inc

caps.drop all
netfilter
nodvd
nogroups
nonewprivs
noroot
notv
nou2f
protocol unix,inet,inet6,netlink
seccomp
writable-var

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
