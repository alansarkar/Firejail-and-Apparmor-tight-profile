# Firejail profile for ping
# This file is overwritten after every install/update
quiet
# Persistent local customizations
include ping.local
# Persistent global definitions
include globals.local

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc
include whitelist-common.inc

caps.keep net_raw
ipc-namespace
#net tun0
#netfilter /etc/firejail/ping.net
netfilter
no3d
nodvd
nogroups
# ping needs to rise privileges, noroot and nonewprivs will kill it
#nonewprivs
#noroot
nosound
notv
nou2f
novideo

# protocol command is built using seccomp; nonewprivs will kill it
#protocol unix,inet,inet6,netlink,packet

# killed by no-new-privs
#seccomp

disable-mnt
private
#private-bin has mammoth problems with execvp: "No such file or directory"
private-dev
# /etc/hosts is required in private-etc hosts,ssl,ca-certificates
#private-etc hosts,ssl,ca-certificates
private-tmp

# memory-deny-write-execute is built using seccomp; nonewprivs will kill it
#memory-deny-write-execute
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
