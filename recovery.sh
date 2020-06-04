#!/bin/bash

set -e

sudo ip link set dev enp0s8 up
sudo /etc/init.d/networking restart
sudo /sbin/ifdown enp0s8
sudo ip addr flush dev enp0s8
sudo /sbin/ifup enp0s8
