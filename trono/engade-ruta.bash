#!/bin/bash
#REDE 22.88.0.0/16 por rcurro
ip r del default via 172.20.0.2 dev eth0
ip r add default via 10.0.30.3 dev eth1
ip r add 45.60.60.0/24 via 10.0.30.254
ip r add 10.0.10.0/24 via 10.0.30.254
ip r add 10.0.20.0/24 via 10.0.30.254
ip r add 10.0.40.0/24 via 10.0.30.254
