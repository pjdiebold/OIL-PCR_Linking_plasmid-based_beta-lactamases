#!/bin/bash
export PATH=/programs/usearch11.0.667:$PATH
WRK=/workdir/users/pd378/oilPCR/bulk_process_all_OIL_for_paper   #UPDATE THE WORKDIR

mkdir $WRK/s6_cluster_otu/filtered_uniqs
FASTA_IN=$WRK/s5_split_reads/combined_ribo_named.fa
FASTA_OUT=$WRK/s6_cluster_otu/filtered_uniqs/combined_uniq_ribo.fa
TAB_OUT=$WRK/s6_cluster_otu/filtered_uniqs/combined_uniq_tab.txt
STAT_OUT=$WRK/s6_cluster_otu/filtered_uniqs/combined_uniq_stats.txt

usearch -fastx_uniques $FASTA_IN -fastaout $FASTA_OUT -tabbedout $TAB_OUT -relabel Uniq -sizeout 2> $STAT_OUT


RIBO_OUT=$WRK/s6_cluster_otu

mkdir $RIBO_OUT 

PARSED=$RIBO_OUT/filtered_uniqs/uniq_parsed_otu_tab.txt
OTUS=$RIBO_OUT/filtered_uniqs/uniq_clustered_otus.fa
STATS=$RIBO_OUT/filtered_uniqs/uniq_otu_stats.txt

usearch -cluster_otus $FASTA_OUT -otus $OTUS -relabel otu -uparseout $PARSED -minsize 1 2> $STATS