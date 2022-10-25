#!/bin/bash
#vsn=$1

printf "[";
curl -s https://data.sagecontinuum.org/api/v1/query -d '{"start":"-90m","tail":1,"filter":{"name":"sys.sanity_status.*","vsn":"'$1'"}}'
printf "]";
