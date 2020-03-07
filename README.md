# Firejail-and-Apparmor-tight-profile
This are a strong privacy profiles for firejail and apparmor <br>

# Firejail 
A strong tight profile which has :
* A costom firewall
* gives a default dns
* privates every unnecessary folder
* for some untrusted software removes external partation access
* compleatelly removes root access 
* filters seccomp 

# Apparmor 
This proflie enforces all unwanted softwares from root and internet access. <br>
also protects from boot time external script  from running

# Installation of profiles :
* Just copy both profile to /etc/ directory 
* run the following command 
    <code> sudo firecfg </code>
    <code> sudo aa-enforce /etc/apparmor.d/* </code>
  * for apparmor make sure you have <code>apparmor-utils </code>installed depending on your distro  <br>
  also make sure to check to set all necessary  softwares to complain mode with <br>
  this following command : <br>
  <code> sudo aa-complain the-necessary-software-name </code>
  
  * If a firejail profile fails to run a software or you need to run it in root with firejail. just use a text editor and <br> edit the profile by removing or adding # infront of the lines <br> which are:  <br>
 <code> noroot, seccomp, machine-id, ipc-namespace, nonewprivs, nogroups, <br> shell none, read-only, private-dev</code> <br>
 * If you are running a server with sandbox firejail then add the port number of use to the following files :
   <br> <code> tcpserver.net, webserver.net </code>

