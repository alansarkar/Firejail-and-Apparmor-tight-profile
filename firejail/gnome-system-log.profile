# Firejail profile for gnome-system-log
# Description: View your system logs
# This file is overwritten after every install/update
# Persistent local customizations
include gnome-system-log.local
# Persistent global definitions
include globals.local

noblacklist /var/log

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

whitelist /var/log
include whitelist-common.inc
include whitelist-var-common.inc

apparmor
caps.drop all
ipc-namespace
# net none - breaks dbus
no3d
# nodbus
nodvd
# When using 'volatile' storage (https://www.freedesktop.org/software/systemd/man/journald.conf.html),
# comment both 'nogroups' and 'noroot'
# or put 'ignore nogroups' and 'ignore noroot' in your gnome-system-log.local.
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
private-bin gnome-system-log
#private-cache
private-dev
private-etc hosts,ssl,ca-certificates
private-lib
private-tmp
writable-var-log

memory-deny-write-execute

# comment this if you export logs to a file in your ${HOME}
# or put 'ignore read-only ${HOME}' in your gnome-system-log.local
read-only ${HOME}
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
