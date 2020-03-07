# Firejail profile for exiftool
# This file is overwritten after every install/update
quiet
# Persistent local customizations
include exiftool.local
# Persistent global definitions
include globals.local

blacklist /tmp/.X11-unix

# Allow access to perl
noblacklist ${PATH}/perl
noblacklist /usr/lib/perl*
noblacklist /usr/share/perl*

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc

apparmor
caps.drop all
ipc-namespace
machine-id
net none
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
protocol unix
seccomp
shell none
tracelog

# To support exiftool in private-bin on Arch Linux (and derivatives), symlink /usr/bin/vendor_perl/exiftool to /usr/bin/exiftool and uncomment the below.
# Users on non-Arch Linux distributions can safely uncomment (or put in exiftool.local) the line below to enable extra hardening.
#private-bin exiftool,perl
#private-cache
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
