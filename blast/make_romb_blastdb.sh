#!/bin/bash

export PATH=/programs/ncbi-blast-2.9.0+/bin:$PATH
WRK=/workdir/users/pd378/oilPCR/bulk_process_all_OIL_for_paper
FASTA=$WRK/aligning_romboutsia_scaffolds/blast_db/all_romb_scaffolds.txt
OUT=$WRK/aligning_romboutsia_scaffolds/blast_db

cd $OUT

makeblastdb -in $FASTA -dbtype nucl -parse_seqids

