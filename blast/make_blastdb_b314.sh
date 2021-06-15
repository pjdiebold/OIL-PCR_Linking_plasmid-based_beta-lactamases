#!/bin/bash

export PATH=/programs/ncbi-blast-2.9.0+/bin:$PATH
WRK=/workdir/users/pd378/oilPCR/bulk_process_all_OIL_for_paper
FASTA=$WRK/s7_blast_targets/b314-2_blast_db/arg_colapse_scaffold_DB.fa
OUT=$WRK/s7_blast_targets/b314-2_blast_db

cd $OUT

makeblastdb -in $FASTA -dbtype nucl -parse_seqids

