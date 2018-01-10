#!/bin/bash 

while true ; do

  id=`ps -ef | grep cpulimit | grep -v "grep" | awk '{print $10}' | tail -1`

  nid=`ps aux | awk '{ if ( $3 > 75 ) print $2 }' | head -1`

  if [ "${nid}" != "" ] && [ "${nid}" != "${id}" ] ; then

    cpulimit -p ${nid} -l 75 &

    echo "[`date`] CpuLimiter run for ${nid} `ps -ef | grep ${nid} | awk '{print $8}' | head -1`" >> /root/cpulimit-log.log

  fi

  sleep 3

done
