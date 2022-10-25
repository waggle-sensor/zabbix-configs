#!/bin/bash
#vsn=$1

printf "[";
curl   -s https://data.sagecontinuum.org/api/v1/query -d '{"start":"-150m","tail":1,"bucket":"health-check-test","filter":{"name":"device_health_check","vsn":"'$1'"}}'
printf "]";
