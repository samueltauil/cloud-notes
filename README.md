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

## Give run as root permission

```
oadm policy add-scc-to-user anyuid -z default
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

## Docker login to push images in the registry

To log in to the registry directly:

Ensure you are logged in to OpenShift as a regular user:

```
$ oc login
```
Get your access token:

```
$ oc whoami -t
```

Give Cluster Admin role to a user:

```
$ oadm policy add-cluster-role-to-user cluster-admin <user_name>
```

Log in to the Docker registry:

```
$ docker login -u <username> -e <any_email_address> \
    -p <token_value> <registry_ip>:<port>
```

Check weather forecast by command line:

```
$ curl wttr.in/<city_name>
```

Create htpasswd user:

```
$ htpasswd -b /etc/origin/openshift-passwd demo demo
```

Debug containers:

```
$ oc run rheltest --image=registry.access.redhat.com/rhel7/rhel-tools --restart=Never --attach -i --tty
```

