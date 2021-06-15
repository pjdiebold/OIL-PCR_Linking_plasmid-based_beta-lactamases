#!/bin/bash
export PATH=/programs/usearch11.0.667:$PATH
WRK=/workdir/users/pd378/oilPCR/bulk_process_all_OIL_for_paper   #UPDATE THE WORKDIR


RIBO_READS=$WRK/s5_split_reads/combined_ribo_named.fa
RIBO_OUT=$WRK/s6_cluster_otu/unfiltered_uniqs
SORTED_READS=$WRK/s5_split_reads/combined_ribo_named_sorted.fa

mkdir $RIBO_OUT 

PARSED=$RIBO_OUT/unfiltered_uniqs/parsed_otu_tab.txt
OTUS=$RIBO_OUT/unfiltered_uniqs/clustered_otus.fa
STATS=$RIBO_OUT/unfiltered_uniqs/otu_stats.txt

usearch -sortbysize $RIBO_READS -fastaout $SORTED_READS -minsize 1
#cluster the 16S reads
usearch -cluster_otus $SORTED_READS -otus $OTUS -relabel otu -uparseout $PARSED -minsize 1 2> $STATS




