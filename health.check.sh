#!/bin/bash
#vsn=$1

printf "[\n";
curl   -s https://data.sagecontinuum.org/api/v1/query -d '{"start":"-2h","bucket":"health-check-test","filter":{"name":"device_health_check","vsn":"'$1'"}}'
#curl  -s -H 'Content-Type: application/json' https://data.sagecontinuum.org/api/v1/query -d  '{"start":"-120s","filter":{"name":"sys.thermal","host":"*.ws-nxcore","vsn":"'$1'"}}';
printf "]\n";
