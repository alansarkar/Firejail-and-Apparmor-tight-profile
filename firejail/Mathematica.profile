# Firejail profile for Mathematica
# This file is overwritten after every install/update
# Persistent local customizations
include Mathematica.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.Mathematica
noblacklist ${HOME}/.Wolfram Research

include disable-common.inc
include disable-devel.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc

mkdir ${HOME}/.Mathematica
mkdir ${HOME}/.Wolfram Research
whitelist ${HOME}/.Mathematica
whitelist ${HOME}/.Wolfram Research
whitelist ${HOME}/Documents/Wolfram Mathematica
include whitelist-common.inc

caps.drop all
nodvd
nonewprivs
noroot
notv
seccomp
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
