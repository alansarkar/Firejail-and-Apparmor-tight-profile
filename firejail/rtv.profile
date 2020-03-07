# Firejail profile for lynx
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/lynx.local
# Persistent global definitions
include /etc/firejail/globals.local

blacklist /tmp/.X11-unix

#whitelist /etc/lynx.lss
#whitelist /etc/ld.so.preload
#whitelist /etc/lynx.cfg

include /etc/firejail/disable-common.inc
include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-programs.inc

caps.drop all
netfilter
no3d
nodvd
nogroups
nonewprivs
noroot
nosound
notv
novideo
protocol unix,inet
#,inet6
seccomp
shell none
tracelog
netfilter
private-bin rtv,python*,xdg-settings,surf,sh,dmenu,xprop,proxychains4
#private-bin rtv,sh,surf,python*,python3,xdg-settings,sh,less,which,xclip,emacsclient,env,bash,cp,basename,mv

private-dev
private-tmp
apparmor
disable-mnt
shell none
noexec all
ipc-namespace
nodvd
#privateork/x/p/
private
private-dev
private-tmp
dns 8.8.8.8
dns 8.8.4.4
name ugay
netfilter
netfilter /etc/firejail/nolocal.net
noexec /tmp
read-only all
blacklist all/
private-opt all
#private-etc hosts,ssl,ca-certificates
#private-etc hosts,ssl,ca-certificates
noexec /tmp
private-etc hosts,ssl,ca-certificates
#passwd
#private-cache
private-tmp
blacklist all
dns 8.8.8.8
dns 8.8.4.4
ignore seccomp.drop
ignore shell
#taging private-lib will let you login
private-lib python3,python3.7,libncursesw.so.6,terminfo,libgcc_s.so.1,libssl.so.1.1,x86_64-linux-gnu/sasl2,nss,libcrypt-2.27.so,libcrypto.so.1.1,libpython3.7m.so.1.0,libz.so.1,libexpat.so.1
hostname why-do-u-track-me
env RTV_EDITOR='/home/$(whoami)/.local/bin/rtv_em'
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
