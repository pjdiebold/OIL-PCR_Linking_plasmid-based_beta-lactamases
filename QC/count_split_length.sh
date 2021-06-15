#!/bin/bash
#this file adds the file names to each otu so that it can all be piped into MOTHUR at the same time
#I manually cat them all togther after this script is run
WRK=/workdir/users/pd378/oilPCR/bulk_process_all_OIL_for_paper
RIBO_READS=$WRK/s5_split_reads/ribo_reads
TARG_READS=$WRK/s5_split_reads/target_reads
FILE=$WRK/file_lists/filelist.txt

cd $WRK/s5_split_reads
mkdir split_length_analysis

while IFS=, read -r name
do

awk '/^>/{if (l!="") print l; print; l=0; next}{l+=length($0)}END{print l}' $RIBO_READS/${name}_ribo.fa > split_length_analysis/${name}_lengths.txt



done < "$FILE"

