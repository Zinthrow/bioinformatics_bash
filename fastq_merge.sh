#!/bin/bash

for i in $(find ./ -type f -name "*.fastq.gz" | while read F; do basename $F | cut -c -17; done | sort | uniq)

    do echo $i "Merging R1"

cat "$i"*_L00*_R1_001.fastq.gz > "$i"_R1.fastq.gz

       echo $i "Merging R2"

cat "$i"*_L00*_R2_001.fastq.gz > "$i"_R2.fastq.gz

done;

rm Undet*
rm *_L00*
