#!/bin/sh
export PATH=/app/jre/bin:/usr/bin

jar_file=`zenity --file-selection --title="Select a File"`

java -jar "$jar_file"
