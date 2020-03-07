# Firejail profile for freemind
# Description: Free mind mapping software
# This file is overwritten after every install/update
# Persistent local customizations
include freemind.local
# Persistent global definitions
include globals.local

noblacklist ${DOCUMENTS}
noblacklist ${PATH}/java
noblacklist /etc/java
noblacklist /usr/lib/java
noblacklist /usr/share/java
noblacklist ${HOME}/.freemind

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

include whitelist-var-common.inc

apparmor
caps.drop all
machine-id
netfilter
no3d
nodbus
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
private-bin freemind,java,bash,sed,sh,grep,mkdir,echo,cp,uname,which,lsb_release,rpm,dpkg,dirname,readlink
#private-cache
private-dev
#private-etc hosts,ssl,ca-certificates
private-tmp
private-opt none
private-srv none
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
