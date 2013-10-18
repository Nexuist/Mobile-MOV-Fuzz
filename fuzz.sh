#!/bin/bash
request_uri=$( env | grep REQUEST_URI )
file=${request_uri:13}
file_name="${file%.*}"
if [ -r $file ] && [ $file != "/" ]; then
seed=$RANDOM
/opt/local/bin/zzuf -s $seed -r 0.0001:0.001 < $file > ${file_name}_fuzzed.mov
date +"%T Fuzzed $file with seed $seed" >> log.txt
echo "Content-Type: video/quicktime"
echo ""
cat ${file_name}_fuzzed.mov
else
echo "Content-Type: text/plain"
echo ""
echo "not found"
fi
