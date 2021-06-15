#!/bin/bash

WRK=/workdir/users/pd378/oilPCR/all_16s_for_paper   #UPDATE THE WORKDIR
FASTAS_ALL=/workdir/users/pd378/oilPCR/all_16s_for_paper/s5_cluster_otus/all_otu.fa
SILVA=/workdir/users/pd378/DataBases/MOTHUR_SILVA/silva.nr_v132.V4_oil
OUT=$WRK/s5_cluster_otus

cd $OUT

/programs/mothur/mothur "#classify.seqs(fasta=$FASTAS_ALL,  template=$SILVA.align, taxonomy=$SILVA.tax, processors=10, cutoff=0)"
#/programs/mothur/mothur "#classify.seqs(fasta=ALL_OTUs.fasta, template=$SILVA/silva.nr_v132.align, taxonomy=$SILVA/silva.nr_v132.tax, processors=20)"
