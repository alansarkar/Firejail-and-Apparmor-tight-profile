# Firejail profile for xreader
# Description: Document viewer for files like PDF and Postscript. X-Apps Project.
# This file is overwritten after every install/update
# Persistent local customizations
include xreader.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.cache/xreader
noblacklist ${HOME}/.config/xreader
noblacklist ${DOCUMENTS}

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

# Breaks xreader on Mint 18.3
# include whitelist-var-common.inc

# apparmor
caps.drop all
no3d
nodvd
nogroups
nonewprivs
noroot
nosound
notv
nou2f
novideo
protocol unix
seccomp
shell none
tracelog

private-bin xreader,xreader-previewer,xreader-thumbnailer
private-dev
private-etc hosts,ssl,ca-certificates
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
