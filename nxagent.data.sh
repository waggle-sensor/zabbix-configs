#!/bin/bash
#vsn=$1
#host="ws-nxagent"

printf "[";
curl  -s -H 'Content-Type: application/json' https://data.sagecontinuum.org/api/v1/query -d  '{"start":"-180s","tail":1,"filter":{"name":"sys.*","host":"*.ws-nxagent","vsn":"'$1'"}}';
printf "]";

##a="";
##a=`curl  -s -H 'Content-Type: application/json' https://data.sagecontinuum.org/api/v1/query -d  '{"start":"-120s","filter":{"host":"*.ws-nxagent","vsn":"'$1'"}}'`;
##
##if [ -z "$a" ]
##then
##  exit 0;
##else
##  printf "[\n";
##  curl  -s -H 'Content-Type: application/json' https://data.sagecontinuum.org/api/v1/query -d  '{"start":"-120s","filter":{"host":"*.ws-nxagent","vsn":"'$1'"}}';
##  printf "]\n";
##fi
