#!/bin/bash

lb="kubernetes-ha-lb"
master_1="kubernetes-ha-master-1"
master_2="kubernetes-ha-master-2"
worker_1="kubernetes-ha-worker-1"
worker_1="kubernetes-ha-worker-2"

export SERVICE_CIDR="10.96.0.0/24"
export MASTER_1=$(dig +short "${master_1}")
export MASTER_2=$(dig +short "${master_2}")
export LOADBALANCER=$(dig +short "${lb}")
export API_SERVICE=$(echo $SERVICE_CIDR | awk 'BEGIN {FS="."} ; { printf("%s.%s.%s.1", $1, $2, $3) }')
