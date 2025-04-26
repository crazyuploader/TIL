# Set Metric For A Network Using nmcli

For some reason my ISP started acting up today from few days, and result was no internet on laptop for some time now and then, using mobile's data is a bliss, but by default laptop gives priority to the ethernet over WiFi hotspot. And that we can change by changing the metric of the WiFi Network connection by using `nmcli` command.

## Check Current Metric Value

We can check current metric value by issuing `ip route` command.

```code
$ ip route
default via 192.168.53.52 dev wlp4s0 proto dhcp src 192.168.53.217 metric 600
default via 10.71.72.1 dev enp3s0 proto static metric 100
10.66.66.0/24 dev wg1 scope link
10.66.69.0/24 dev wg3 scope link
10.71.72.0/24 dev enp3s0 proto kernel scope link src 10.71.72.10 metric 100
172.17.0.0/16 dev docker0 proto kernel scope link src 172.17.0.1 linkdown
192.168.53.0/24 dev wlp4s0 proto kernel scope link src 192.168.53.217 metric 600
192.168.122.0/24 dev virbr0 proto kernel scope link src 192.168.122.1 linkdown
```

## Change Metric Value for an Interface

To change the metric value for an interface, we can use `nmcli` command -

```code
$ sudo nmcli connection modify "Junglee Hotspot" ipv4.route-metric 50
```

Here, I am changing the metric value to 50 for the WiFi Network.

## Check Metric Value Again

```code
$ ip route
default via 192.168.53.52 dev wlp4s0 proto dhcp src 192.168.53.217 metric 50
default via 10.71.72.1 dev enp3s0 proto static metric 100
10.66.66.0/24 dev wg1 scope link
10.66.69.0/24 dev wg3 scope link
10.71.72.0/24 dev enp3s0 proto kernel scope link src 10.71.72.10 metric 100
172.17.0.0/16 dev docker0 proto kernel scope link src 172.17.0.1 linkdown
192.168.53.0/24 dev wlp4s0 proto kernel scope link src 192.168.53.217 metric 50
192.168.122.0/24 dev virbr0 proto kernel scope link src 192.168.122.1 linkdown
```

And of course, we can use `ip route` command to achieve the same result!

```code
$ sudo ip route replace default via 192.168.53.52 dev wlp4s0 proto dhcp src 192.168.53.217 metric 50
```

**_Source: [Baeldung Linux](https://www.baeldung.com/linux/change-network-routing-metric)_**
