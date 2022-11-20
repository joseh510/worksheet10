#!/bin/bash



cut -f 9 amazon_reviews_us_Books_v1_02.tsv | sed '1d'  | awk '{if(min==""){min=max=$1}; if($1>max) {max=$1}; if($1<min) {min=$1}; total+=$1; count+=1} END {print "avg " total/count," | max "max," | min " min}'





