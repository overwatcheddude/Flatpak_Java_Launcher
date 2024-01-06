#!/bin/sh
export PATH=/app/jre/bin:/usr/bin

read -p "Enter the JAR file name: " jar_file

java -jar "$jar_file"
