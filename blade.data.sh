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
##  printf "[";
##  curl  -s -H 'Content-Type: application/json' https://data.sagecontinuum.org/api/v1/query -d  '{"start":"-120s","filter":{"host":"*.ws-nxcore","vsn":"'$1'"}}';
##  printf "]";
##fi
##
printf "[";
curl   -s -H 'Content-Type: application/json' https://data.sagecontinuum.org/api/v1/query -d  '{"start":"-180s","tail":1,"filter":{"vsn":"'$1'"}}';
#curl  -s -H 'Content-Type: application/json' https://data.sagecontinuum.org/api/v1/query -d  '{"start":"-180s","tail":1,"filter":{"name":"sys.*","host":"*.ws-nxcore","vsn":"'$1'"}}';
printf "]";
