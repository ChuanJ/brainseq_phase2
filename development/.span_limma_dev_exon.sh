#!/bin/bash
#$ -cwd
#$ -l mem_free=25G,h_vmem=25G,h_fsize=100G
#$ -N span_limma_dev_exon
#$ -o ./logs/span_limma_dev_exon.txt
#$ -e ./logs/span_limma_dev_exon.txt
#$ -m e

echo "**** Job starts ****"
date

echo "**** JHPCE info ****"
echo "User: lcollado"
echo "Job id: "
echo "Job name: "
echo "Hostname: compute-097"
echo "Task id: "

module load conda_R/3.4.x
Rscript span_limma_dev.R -t exon

echo "**** Job ends ****"
date
