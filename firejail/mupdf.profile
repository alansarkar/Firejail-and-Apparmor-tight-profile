# Firejail profile for mupdf
# Description: Lightweight PDF viewer
# This file is overwritten after every install/update
# Persistent local customizations
include mupdf.local
# Persistent global definitions
include globals.local

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
net none
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
# seccomp.keep access,arch_prctl,brk,clone,close,connect,execve,exit_group,fchmod,fchown,fcntl,fstat,futex,getcwd,getpeername,getrlimit,getsockname,getsockopt,lseek,lstat,mlock,mmap,mprotect,mremap,munmap,nanosleep,open,poll,prctl,read,recvfrom,recvmsg,restart_syscall,rt_sigaction,rt_sigprocmask,select,sendmsg,set_robust_list,set_tid_address,setresgid,setresuid,shmat,shmctl,shmget,shutdown,socket,stat,sysinfo,uname,unshare,wait4,write,writev
shell none
tracelog

# private-bin mupdf,sh,tempfile,rm
private-dev
private-etc hosts,ssl,ca-certificates
private-tmp

memory-deny-write-execute
read-only ${HOME}
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
