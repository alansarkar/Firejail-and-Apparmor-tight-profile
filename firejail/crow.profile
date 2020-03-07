# Firejail profile for crow
# Description: A translator that allows to translate and say selected text using Google, Yandex and Bing translate API
# This file is overwritten after every install/update
# Persistent local customizations
include crow.local
# Persistent global definitions
include globals.local

mkdir ${HOME}/.config/crow
mkdir ${HOME}/.cache/gstreamer-1.0
whitelist ${HOME}/.config/crow
whitelist ${HOME}/.cache/gstreamer-1.0

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

include whitelist-common.inc

caps.drop all
netfilter
no3d
nodvd
nogroups
nonewprivs
noroot
notv
nou2f
novideo
protocol unix,inet,inet6,netlink
seccomp
shell none

disable-mnt
private-bin crow
private-dev
private-etc hosts,ssl,ca-certificates
private-opt none
private-tmp
private-srv none

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
