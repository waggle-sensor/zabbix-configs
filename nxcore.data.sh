#!/bin/bash
#vsn=$1
#host="ws-nxcore"
##
##a="";
##a=`curl  -s -H 'Content-Type: application/json' https://data.sagecontinuum.org/api/v1/query -d  '{"start":"-120s","filter":{"host":"*.ws-nxcore","vsn":"'$1'"}}'`;
##
##if [ -z "$a" ]
##then
##  exit 0;
##else
##  printf "[\n";
##  curl  -s -H 'Content-Type: application/json' https://data.sagecontinuum.org/api/v1/query -d  '{"start":"-120s","filter":{"host":"*.ws-nxcore","vsn":"'$1'"}}';
##  printf "]\n";
##fi
##
printf "[\n";
curl  -s -H 'Content-Type: application/json' https://data.sagecontinuum.org/api/v1/query -d  '{"start":"-120s","filter":{"name":"sys.*","host":"*.ws-nxcore","vsn":"'$1'"}}';
printf "]\n";
