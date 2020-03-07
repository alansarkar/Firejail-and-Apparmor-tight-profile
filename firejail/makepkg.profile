# Firejail profile for makepkg
# This file is overwritten after every install/update

# Note: see this Arch forum discussion https://bbs.archlinux.org/viewtopic.php?pid=1743138
# for potential issues and their solutions when Firejailing makepkg

# This profile could be significantly strengthened by adding the following to makepkg.local
# whitelist ${HOME}/<Your Build Folder>
# whitelist ${HOME}/.gnupg

quiet
# Persistent local customizations
include makepkg.local
# Persistent global definitions
include globals.local


# Enable severely restricted access to ${HOME}/.gnupg
noblacklist ${HOME}/.gnupg
read-only ${HOME}/.gnupg/gpg.conf
read-only ${HOME}/.gnupg/trustdb.gpg
read-only ${HOME}/.gnupg/pubring.kbx
blacklist ${HOME}/.gnupg/random_seed
blacklist ${HOME}/.gnupg/pubring.kbx~
blacklist ${HOME}/.gnupg/private-keys-v1.d
blacklist ${HOME}/.gnupg/crls.d
blacklist ${HOME}/.gnupg/openpgp-revocs.d


# Need to be able to read /var/lib/pacman, {Note no capabilities so automatically read-only}
noblacklist /var/lib/pacman

include disable-common.inc
include disable-exec.inc
include disable-passwdmgr.inc
include disable-programs.inc

caps.drop all
ipc-namespace
netfilter
no3d
nodvd
nogroups
nonewprivs
# noroot is only disabled to allow the creation of kernel headers from an official PKGBUILD.
#noroot
nosound
notv
novideo
protocol unix,inet,inet6
seccomp
shell none

disable-mnt
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
