Cloud Notes
=====

## VirtualBox local access
VirtualBox, VM's Network panel, click on advanced, click on Port Forwarding button. In there set up a rule:

```
Host IP: 127.0.0.1
Host Port: 2222
Guest IP: 10.0.2.15
Guest Port: 22
```

Then enable ssh in the guest, and connect from the host using:

```
$ ssh -p 2222 root@127.0.0.1
```

## Vim line numbers

Create the file on `~/.vimrc` and add:

```
set nu
```

## OpenShift admin login

To login as administrator:
     
```
$ oc login -u system:admin
```

## Change the DHCP config for NAT network on VirtualBox

To change the range and ip, create the NAT network first and then adjust the values as needed:

```
$ VBoxManage dhcpserver modify --netname NatNetwork --ip 10.2.2.100 --netmask 255.255.255.0 --lowerip 10.2.2.101 --upperip 10.2.2.254 --enable
```

