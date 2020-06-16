#!/usr/bin/env bash

CRF=30 
if [ $# -eq 2 ]
then
	CRF=$2
fi
echo "CRF USED: $# $CRF"
ffmpeg -i $1 -vcodec libx264 -crf $CRF compressed-${1}
