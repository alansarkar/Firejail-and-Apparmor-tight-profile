# Firejail profile for libreoffice
# Description: Office productivity suite
# This file is overwritten after every install/update
# Persistent local customizations
include libreoffice.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.java
noblacklist /usr/local/sbin
noblacklist ${HOME}/.config/libreoffice

# libreoffice uses java; if you don't care about java functionality,
# comment the next four lines
noblacklist ${PATH}/java
noblacklist /usr/lib/java
noblacklist /etc/java
noblacklist /usr/share/java

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-passwdmgr.inc
include disable-programs.inc

include whitelist-var-common.inc

# ubuntu 18.04 comes with its own apparmor profile, but it is not in enforce mode.
# comment the next line to use the ubuntu profile instead of firejail's apparmor profile
apparmor
caps.drop all
netfilter
nodvd
nogroups
# comment nonewprivs when using the ubuntu 18.04/debian 10 apparmor profile
nonewprivs
noroot
notv
nou2f
# comment the protocol line when using the ubuntu 18.04/debian 10 apparmor profile
protocol unix,inet,inet6
# comment seccomp when using the ubuntu 18.04/debian 10 apparmor profile
seccomp
shell none
# comment tracelog when using the ubuntu 18.04/debian 10 apparmor profile
tracelog

private-dev
private-tmp
#private-cache 
net none
join-or-start libreoffice
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
