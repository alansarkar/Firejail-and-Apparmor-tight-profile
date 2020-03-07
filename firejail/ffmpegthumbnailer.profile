# Firejail profile for ffmpegthumbnailer
# Description: FFmpeg-based video thumbnailer
# This file is overwritten after every install/update
# Persistent local customizations
include ffmpegthumbnailer.local
# Persistent global definitions
# added by included profile
#include globals.local

private-bin ffmpegthumbnailer
private-lib libffmpegthumbnailer.so.*

# fix for ranger video thumbnails
ignore #private-cache

# Redirect
include ffmpeg.profile
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
