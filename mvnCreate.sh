#!/bin/bash
# DartifactId為專案資料夾名稱, DgroupId為package, 預設產生的class為App.java
mvn archetype:generate -DartifactId=$1 -DgroupId=$2 -DarchetypeArtifactId=maven-archetype-quickstart -DinteractiveMode=false
