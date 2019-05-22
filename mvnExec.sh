#!/bin/bash
mvn clean install; mvn exec:java -Dexec.mainClass=com.fujitsu.smms.othersystem.SJB101010 -Dexec.args="SJB101010 /smms/apl/lock/ SJB101010Receive.properties 41100"
