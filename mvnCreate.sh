#!/bin/bash
mvn archetype:generate 	-DgroupId=$1 \
						-DartifactId=$2 \
						-DarchetypeArtifactId=maven-archetype-quickstart \
						-DinteractiveMode=false
