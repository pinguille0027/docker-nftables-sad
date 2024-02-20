#!/bin/bash
#REDE 22.88.0.0/16 por rcurro
ip r add 45.60.60.0/24 via 10.0.20.254
ip r add 10.0.10.0/24 via 10.0.20.254
ip r add 10.0.30.0/24 via 10.0.20.254
ip r add 10.0.40.0/24 via 10.0.20.254
