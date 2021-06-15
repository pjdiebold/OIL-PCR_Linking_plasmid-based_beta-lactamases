#!/bin/bash

#$ makeblastdb -in test.fsa -parse_seqids -blastdb_version 5 -taxid_map test_map.txt -title "Cookbook demo" -dbtype prot

#export PATH=/programs/usearch11.0.667:$PATH
WRK=/workdir/users/pd378/oilPCR/bulk_process_all_OIL_for_paper
FASTA=$WRK/aligning_romboutsia_scaffolds/blast_db/all_romb_scaffolds.txt
OUTPUT=$WRK/aligning_romboutsia_scaffolds/romb_blast_results.txt




#export for blast database and blast program
BLASTDB="/workdir/users/pd378/oilPCR/bulk_process_all_OIL_for_paper/aligning_romboutsia_scaffolds/blast_db"
export BLASTDB
export PATH=/programs/ncbi-blast-2.9.0+/bin:$PATH

blastn -db all_romb_scaffolds.txt -query $FASTA \
	 -out $OUTPUT -max_target_seqs 10 \
	 -outfmt '6 qseqid sseqid pident length mismatch gapopen qstart qend sstart send evalue bitscore stitle'

