# Firejail profile for cin
# This file is overwritten after every install/update
# Persistent local customizations
include cin.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.bcast5

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc

caps.drop all
ipc-namespace
net none
nodbus
nodvd
#nogroups
nonewprivs
notv
nou2f
noroot
protocol unix

# if an 1-1.2% gap per thread hurts you, comment seccomp
seccomp
shell none

#private-bin cin,ffmpeg
#private-cache
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
