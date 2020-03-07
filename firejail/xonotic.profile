# Firejail profile for xonotic
# Description: A free, fast-paced crossplatform first-person shooter
# This file is overwritten after every install/update
# Persistent local customizations
include xonotic.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.xonotic

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc

mkdir ${HOME}/.xonotic
whitelist ${HOME}/.xonotic
include whitelist-common.inc
include whitelist-var-common.inc

caps.drop all
netfilter
nodbus
nodvd
nogroups
nonewprivs
noroot
notv
nou2f
novideo
protocol unix,inet,inet6
seccomp
shell none

disable-mnt
private-bin bash,blind-id,darkplaces-glx,darkplaces-sdl,dirname,grep,ldd,netstat,ps,readlink,sh,uname,xonotic,xonotic-glx,xonotic-linux32-dedicated,xonotic-linux32-glx,xonotic-linux32-sdl,xonotic-linux64-dedicated,xonotic-linux64-glx,xonotic-linux64-sdl,xonotic-sdl
private-dev
private-etc hosts,ssl,ca-certificates
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
