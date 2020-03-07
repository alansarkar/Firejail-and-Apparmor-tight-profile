# Firejail profile for multimc5
# This file is overwritten after every install/update
# Persistent local customizations
include multimc5.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.java
noblacklist ${HOME}/.local/share/multimc
noblacklist ${HOME}/.local/share/multimc5
noblacklist ${HOME}/.multimc5

# Allow access to java
noblacklist ${PATH}/java
noblacklist /usr/lib/java
noblacklist /etc/java
noblacklist /usr/share/java

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc

mkdir ${HOME}/.local/share/multimc
whitelist ${HOME}/.local/share/multimc
whitelist ${HOME}/.local/share/multimc5
whitelist ${HOME}/.multimc5
include whitelist-common.inc

caps.drop all
netfilter
nodvd
nogroups
nonewprivs
noroot
notv
nou2f
novideo
protocol unix,inet,inet6
# seccomp
shell none

disable-mnt
# private-bin works, but causes weirdness
# private-bin multimc5,bash,mkdir,which,zenity,kdialog,ldd,chmod,valgrind,apt-file,pkgfile,dnf,yum,zypper,pfl,java,grep,sort,awk,readlink,dirname
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
