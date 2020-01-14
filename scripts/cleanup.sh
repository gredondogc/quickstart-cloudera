#!/bin/bash

# ------------------------------------------------------------------
#          Cleanup files
# ------------------------------------------------------------------

for f in /home/centos/cloudera/cfn-replace.sh /home/centos/cloudera/download.sh /home/centos/cloudera/cloudera*.tar.gz
do
   if [ -f "$f" ]; then
      rm -rf "$f"
   fi
done

for d in /home/centos/cloudera/aws /home/centos/cloudera/misc
do
	if [ -d "$d" ]; then
	  # Control will enter here if $DIRECTORY exists.
	  rm -rf ${d}
	fi
done

