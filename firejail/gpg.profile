# Firejail profile for gpg
# Description: GNU Privacy Guard -- minimalist public key operations
# This file is overwritten after every install/update
# Persistent local customizations
include gpg.local
# Persistent global definitions
include globals.local

blacklist /tmp/.X11-unix

noblacklist ${HOME}/.gnupg

include disable-common.inc
include disable-devel.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc

caps.drop all
netfilter
no3d
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

# private-bin gpg,gpg-agent
#private-cache
private-dev

# On Arch 'archlinux-keyring' needs read-write access to /etc/pacman.d/gnupg
# and /usr/share/pacman/keyrings. Although this works, it makes
# installing/upgrading archlinux-keyring extremely slow.
read-write /etc/pacman.d/gnupg
read-write /usr/share/pacman/keyrings
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
