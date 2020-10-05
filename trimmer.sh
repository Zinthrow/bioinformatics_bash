#!/bin/bash

val=_R
for file in *$val*; do mv $file ${file:0:20}.full.fastq.gz; done
for file in *$val*; do seqtk sample -s100 $file 12000000 > ${file:0:-13}fastq;done
for file in *$val*; do gzip $file; done
