# Firejail profile for evolution
# Description: Groupware suite with mail client and organizer
# This file is overwritten after every install/update
# Persistent local customizations
include evolution.local
# Persistent global definitions
include globals.local

noblacklist /var/mail
noblacklist /var/spool/mail
noblacklist ${HOME}/.bogofilter
noblacklist ${HOME}/.cache/evolution
noblacklist ${HOME}/.config/evolution
noblacklist ${HOME}/.gnupg
noblacklist ${HOME}/.local/share/evolution
noblacklist ${HOME}/.pki
noblacklist ${HOME}/.local/share/pki

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc

caps.drop all
netfilter
# no3d breaks under wayland
#no3d
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

private-dev
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
