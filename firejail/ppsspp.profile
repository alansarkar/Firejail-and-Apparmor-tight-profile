# Firejail profile for ppsspp
# Description: A PSP emulator written in C++
# This file is overwritten after every install/update
# Persistent local customizations
include ppsspp.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.config/ppsspp
noblacklist ${DOCUMENTS}
# with >=llvm-4 mesa drivers need llvm stuff
noblacklist /usr/lib/llvm*

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

include whitelist-var-common.inc

caps.drop all
ipc-namespace
netfilter
net none
nodbus
nodvd
nogroups
nonewprivs
noroot
notv
novideo
protocol unix,netlink
seccomp
shell none

# private-dev is disabled to allow controller support
#private-dev
private-etc hosts,ssl,ca-certificates
private-opt ppsspp
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
