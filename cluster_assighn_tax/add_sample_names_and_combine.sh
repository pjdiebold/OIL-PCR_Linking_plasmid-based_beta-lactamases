#!/bin/bash
#this file adds the file names to each otu so that it can all be piped into MOTHUR at the same time
#I manually cat them all togther after this script is run
WRK=/workdir/users/pd378/oilPCR/bulk_process_all_OIL_for_paper
RIBO_READS=$WRK/s5_split_reads/ribo_reads
TARG_READS=$WRK/s5_split_reads/target_reads
FILE=$WRK/file_lists/filelist_no_Romb.txt

cd $WRK/s5_split_reads
mkdir renamed_combined_reads
mkdir temp

while IFS=, read -r name
do

awk '/>/{sub(">","&"FILENAME";");sub(/\.fasta/,x)}1' $TARG_READS/${name}_targ.fa > temp/${name}_targ.named.fa
awk '/>/{sub(">","&"FILENAME";");sub(/\.fasta/,x)}1' $RIBO_READS/${name}_ribo.fa > temp/${name}_ribo.named.fa

done < "$FILE"

cat temp/*targ.named.fa > combined_targ_named.fa
cat temp/*ribo.named.fa > combined_ribo_named.fa
rm -r temp