#!/bin/bash

#$ makeblastdb -in test.fsa -parse_seqids -blastdb_version 5 -taxid_map test_map.txt -title "Cookbook demo" -dbtype prot

#export PATH=/programs/usearch11.0.667:$PATH
#WRK=/workdir/users/pd378/oilPCR/bulk_process_all_OIL_for_paper
FASTA=/workdir/users/pd378/oilPCR/OIL_CDC_ARG_redo/cdc_scaffolds
OUTPUT=/workdir/users/pd378/oilPCR/bulk_process_all_OIL_for_paper/aligning_romboutsia_scaffolds/blast_scaffolds/blast_scaffolds_to_genomes




#export for blast database and blast program
BLASTDB="/workdir/users/pd378/oilPCR/bulk_process_all_OIL_for_paper/aligning_romboutsia_scaffolds/amphora/genomes/Romb_db"
export BLASTDB
export PATH=/programs/ncbi-blast-2.9.0+/bin:$PATH

blastn -db Romboutsia.fasta -query $FASTA/B335-1_db/B335-1_scaffold.fasta \
	 -out $OUTPUT/B335-1_scaffold.blast -max_target_seqs 10 \
	 -outfmt '6 qseqid sseqid pident length mismatch gapopen qstart qend sstart send evalue bitscore stitle'

blastn -db Romboutsia.fasta -query $FASTA/B335-2_db/B335-2_scaffold.fasta \
	 -out $OUTPUT/B335-2_scaffold.blast -max_target_seqs 10 \
	 -outfmt '6 qseqid sseqid pident length mismatch gapopen qstart qend sstart send evalue bitscore stitle'
     
blastn -db Romboutsia.fasta -query $FASTA/B335-3_db/B335-3_scaffold.fasta \
	 -out $OUTPUT/B335-3_scaffold.blast -max_target_seqs 10 \
	 -outfmt '6 qseqid sseqid pident length mismatch gapopen qstart qend sstart send evalue bitscore stitle'
