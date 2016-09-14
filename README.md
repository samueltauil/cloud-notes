Cloud Notes
=====

# VirtualBox local access
VirtualBox, VM's Network panel, click on advanced, click on Port Forwarding button. In there set up a rule:

```
Host IP: 127.0.0.1
Host Port: 2222
Guest IP: 10.0.2.15
Guest Port: 22
```

Then enable ssh in the guest, and connect from the host using:

ssh -p 2222 root@127.0.0.1
