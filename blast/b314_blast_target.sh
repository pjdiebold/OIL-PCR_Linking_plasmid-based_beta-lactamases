#!/bin/bash

#$ makeblastdb -in test.fsa -parse_seqids -blastdb_version 5 -taxid_map test_map.txt -title "Cookbook demo" -dbtype prot


#export PATH=/programs/usearch11.0.667:$PATH
WRK=/workdir/users/pd378/oilPCR/bulk_process_all_OIL_for_paper
INPUT=$WRK/s5_split_reads/target_reads
OUTPUT=$WRK/s7_blast_targets/b314-2_blast_results
FILE=$WRK/file_lists/b314-2_filelist.txt



#export for blast database and blast program
BLASTDB=$WRK/s7_blast_targets/b314-2_blast_db
export BLASTDB
export PATH=/programs/ncbi-blast-2.9.0+/bin:$PATH


while IFS=, read -r name
do

blastn -db arg_colapse_scaffold_DB.fa -query $INPUT/${name}_targ.fa \
	 -out $OUTPUT/${name}_targ.blast -max_target_seqs 1 -max_hsps 1\
     -evalue 500 -word_size 9 -reward 1 -penalty -3 -gapopen 5 -gapextend 2 \
	 -outfmt '6 qseqid sseqid pident length mismatch gapopen qstart qend sstart send evalue bitscore'

echo ${name}

done < "$FILE"

