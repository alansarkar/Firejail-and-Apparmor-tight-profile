# Firejail profile for pycharm-community
# This file is overwritten after every install/update
# Persistent local customizations
include pycharm-community.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.PyCharmCE*
noblacklist ${HOME}/.python-history
noblacklist ${HOME}/.pythonrc.py
noblacklist ${HOME}/.java

# Allow access to java
noblacklist ${PATH}/java
noblacklist /usr/lib/java
noblacklist /etc/java
noblacklist /usr/share/java

include disable-common.inc
include disable-devel.inc
include disable-passwdmgr.inc
include disable-programs.inc

caps.drop all
machine-id
nodvd
nogroups
nosound
notv
nou2f
novideo
shell none
tracelog

# private-etc hosts,ssl,ca-certificates
# program!
#private-cache
private-dev
private-tmp

noexec /tmp
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
