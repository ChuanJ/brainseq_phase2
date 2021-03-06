#!/bin/bash
#$ -cwd
#$ -l mem_free=300G,h_vmem=300G,h_fsize=200G
#$ -N extract_data
#$ -o logs/extract_data.txt
#$ -e logs/extract_data.txt
#$ -m e
echo "**** Job starts ****"
date

echo "**** JHPCE info ****"
echo "User: ${USER}"
echo "Job id: ${JOB_ID}"
echo "Job name: ${JOB_NAME}"
echo "Hostname: ${HOSTNAME}"
echo "Task id: ${TASK_ID}"


Rscript extract_data.R

echo "**** Job ends ****"
date
