# Firejail profile for gnome-nettool
# Description: Graphical interface for various networking tools
# This file is overwritten after every install/update
# Persistent local customizations
include gnome-nettool.local
# Persistent global definitions
include globals.local

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

include whitelist-common.inc
include whitelist-var-common.inc

caps.keep net_raw
ipc-namespace
machine-id
netfilter
no3d
nodbus
nodvd
nogroups
# ping needs to elevate privileges, noroot and nonewprivs will kill it
#nonewprivs
#noroot
nosound
notv
nou2f
novideo
#seccomp
#shell none

disable-mnt
private
#private-cache
private-dev
private-lib libgtk-3.so.*,libgtop*,libbind9.so.*,libcrypto.so.*,libdns.so.*,libirs.so.*,liblua.so.*,libssh2.so.*,libssl.so.*
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
