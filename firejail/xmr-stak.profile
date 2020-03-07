# Firejail profile for xmr-stak
# This file is overwritten after every install/update
# Persistent local customizations
include xmr-stak.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.xmr-stak
noblacklist /usr/lib/llvm*

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

mkdir ${HOME}/.xmr-stak
include whitelist-var-common.inc

caps.drop all
ipc-namespace
netfilter
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

disable-mnt
private ${HOME}/.xmr-stak
private-bin xmr-stak
private-dev
private-etc hosts,ssl,ca-certificates
#private-lib libxmrstak_opencl_backend,libxmrstak_cuda_backend
private-opt cuda
private-tmp

memory-deny-write-execute
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
