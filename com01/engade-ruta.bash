#!/bin/bash
#REDE 22.88.0.0/16 por rcurro
ip r add default via 192.168.10.254 dev eth0
ip r add 45.60.60.0/24 via 192.168.10.254
ip r add 192.168.10.0/24 via 192.168.10.254
ip r add 192.168.30.0/24 via 192.168.10.254
ip r add 192.168.40.0/24 via 192.168.10.254
