#!/bin/bash
file="Demo"
seed=$RANDOM
zzuf -s $seed -r 0.0001:0.001 < $file.mov > fuzzed.mov
date +"%T Fuzzed $file.mov with seed $seed" >> log.txt
echo "Content-Type: text/html

<html>
<head>
</head>
<body>
<video src = "fuzzed.mov" controls autoplay> </video>
</body>"
