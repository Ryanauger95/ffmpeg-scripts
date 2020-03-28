#!/usr/bin/env bash

CRF=30 
if [ $# === 1 ]
then
	CRF=$1
fi

ffmpeg -i $1 -vcodec libx264 -crf $CRF compressed-${1}
