#!/bin/bash
#$ -cwd
#$ -l bluejay,mem_free=80G,h_vmem=80G,h_fsize=200G
#$ -N wgcna_hippo_genes
#$ -o logs/wgcna_hippo_genes.txt
#$ -e logs/wgcna_hippo_genes.txt
#$ -m a
echo "**** Job starts ****"
date

Rscript /dcl01/lieber/ajaffe/lab/brainseq_phase2/wgcna/wgcna_caseControl_hippo.R

echo "**** Job ends ****"
date

