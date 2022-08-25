#!/bin/bash
#vsn=$1

printf "[\n";
curl -s https://data.sagecontinuum.org/api/v1/query -d '{"start":"-1h","filter":{"name":"sys.sanity_status.*","vsn":"'$1'"}}'
#curl   -s https://data.sagecontinuum.org/api/v1/query -d '{"start":"-2h","bucket":"health-check-test","filter":{"name":"device_health_check","vsn":"'$1'"}}'
printf "]\n";
