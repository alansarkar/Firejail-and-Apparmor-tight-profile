# Firejail profile for evince
# Description: Document (PostScript, PDF) viewer
# This file is overwritten after every install/update
# Persistent local customizations
include evince.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.config/evince
noblacklist ${DOCUMENTS}

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

include whitelist-var-common.inc

caps.drop all
machine-id
# net none - breaks AppArmor on Ubuntu systems
netfilter
no3d
# nodbus might break two-page-view on some systems
nodbus
nodvd
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
tracelog

private-bin evince,evince-previewer,evince-thumbnailer
#private-cache
private-dev
private-etc hosts,ssl,ca-certificates
private-lib evince,gdk-pixbuf-2.*,gio,gvfs/libgvfscommon.so,libdjvulibre.so.*,libgconf-2.so.*,libpoppler-glib.so.*,librsvg-2.so.*,libspectre.so.*,gconv
private-tmp

# memory-deny-write-execute - might break application (https://github.com/netblue30/firejail/issues/1803)
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
