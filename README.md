# OIL-PCR_Linking_plasmid-based_beta-lactamases

## For OIL-PCR:

1) Use script examples in "merge_split_filter" to process the raw reads into target and 16S portions
2) QC scripts will compile read counts at each step of processing 
3) Use scripts in "cluster_assign_tax" to assign taxonomy to the 16S portions
4) Use scripts in "blast" to identify the target portion
5) Use  jupyter book in "compile_all_data" to compile blast and taxonomy data along with read counts into the final data table


## 16S sequencing 

Scripts for processing the 15=6S data and preparing rarefaction curves are in "16S_and_rarefaction"
