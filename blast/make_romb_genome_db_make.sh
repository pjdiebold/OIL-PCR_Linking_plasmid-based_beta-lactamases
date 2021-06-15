#!/bin/bash

export PATH=/programs/ncbi-blast-2.9.0+/bin:$PATH
WRK=/workdir/users/pd378/oilPCR/bulk_process_all_OIL_for_paper
FASTA=/workdir/users/pd378/oilPCR/bulk_process_all_OIL_for_paper/aligning_romboutsia_scaffolds/amphora/genomes/Romb_db/Romboutsia.fasta
OUT=$WRK/aligning_romboutsia_scaffolds/blast_db

cd $OUT

makeblastdb -in $FASTA -dbtype nucl -parse_seqids

