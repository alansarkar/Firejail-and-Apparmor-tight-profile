# Firejail profile for clawsker
# Description: An applet to edit Claws Mail's hidden preferences
# This file is overwritten after every install/update
# Persistent local customizations
include clawsker.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.claws-mail

# Allow perl (blacklisted by disable-interpreters.inc)
noblacklist ${PATH}/cpan*
noblacklist ${PATH}/core_perl
noblacklist ${PATH}/perl
noblacklist /usr/lib/perl*
noblacklist /usr/share/perl*

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc

mkdir ${HOME}/.claws-mail
whitelist ${HOME}/.claws-mail
include whitelist-common.inc

apparmor
caps.drop all
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

disable-mnt
private-bin bash,clawsker,perl,sh,which
#private-cache
private-dev
private-etc hosts,ssl,ca-certificates
private-lib girepository-1.*,libdbus-glib-1.so.*,libetpan.so.*,libgirepository-1.*,libgtk-x11-2.0.so.*,libstartup-notification-1.so.*,perl*
private-tmp

# memory-deny-write-execute - breaks on Arch
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
