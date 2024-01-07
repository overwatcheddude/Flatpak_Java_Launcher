#!/bin/sh
export PATH=/app/jre/bin:/usr/bin

jar_file=`zenity --file-selection --file-filter='Java Archive files | *.jar'`

java -jar "$jar_file"
