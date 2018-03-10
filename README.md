# tb-tun

tb-tun is an tiny userspace program to build 6to4/tunnelbroker/ISATAP tunnel for Linux.  
The host kernel should have ipv6 stack and supports TUN/TAP.  
Generally the program should run with the root privilege.  

## How to use?

```bash
# Only for OpenVZ VPS
setsid $(which tb-tun) tb-tun <server ipv4> <client ipv4> sit > /dev/null 2>&1&
sleep 1
ifconfig tb-tun up
ifconfig tb-tun inet6 add <client ipv6>
ifconfig tb-tun mtu <mtu>
route -A inet6 add ::/0 dev tb
ip -6 route del default dev venet0
```

## Better forks

- [https://github.com/Blaok/tb-userspace](https://github.com/Blaok/tb-userspace)
