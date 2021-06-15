#!/bin/bash

WRK=/workdir/users/pd378/oilPCR/bulk_process_all_OIL_for_paper   #UPDATE THE WORKDIR
FASTAS_ALL=$WRK/s6_cluster_otu/filtered_uniqs/uniq_clustered_otus.fa
SILVA=/workdir/users/pd378/DataBases/MOTHUR_SILVA/silva.nr_v132.V4_oil

cd $FASTAS

/programs/mothur/mothur "#classify.seqs(fasta=$FASTAS_ALL,  template=$SILVA.align, taxonomy=$SILVA.tax, pro
#/programs/mothur/mothur "#classify.seqs(fasta=ALL_OTUs.fasta, template=$SILVA/silva.nr_v132.align, taxonomy=$SILVA/silva.nr_v132.tax, processors=20)"
