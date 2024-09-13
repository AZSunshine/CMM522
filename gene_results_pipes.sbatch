#!/bin/bash
#SBATCH --job-name=geneResultsPipe
#SBATCH --ntasks=1
#SBATCH --nodes=1
#SBATCH --mem=100mb
#SBATCH --time=00:01:00
#SBATCH --partition=windfall
#SBATCH --account=windfall
cd ~/ccbb_projects
cp gene_results.txt gene_results_toEdit2.txt
labels="Alpha Beta Gamma"
awk '$5 == "coding" {x=$2+$3+$4; print ("Average for Gene" FNR " is: " x/3)}' gene_results_toEdit2.txt | sed 's/Gene[1-4]/Gene[labels]/g' > relevantGenes2.txt