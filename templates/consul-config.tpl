#!/usr/bin/env bash

# Consul configuration script
curl -o /tmp/consul.sh https://raw.githubusercontent.com/chavo1/aws-consul-terraform-multi-region/master/scripts/consul.sh
chmod +x /tmp/consul.sh 
/tmp/consul.sh ${dcname}