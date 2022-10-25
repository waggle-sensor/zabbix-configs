#!/bin/bash
#vsn=$1
#host="ws-nxcore"
printf "[";
curl  -s -H 'Content-Type: application/json' https://data.sagecontinuum.org/api/v1/query -d  '{"start":"-55s","tail":1,"filter":{"name":"env.*","host":"*.ws-nxcore","vsn":"'$1'"}}';
printf "]";
