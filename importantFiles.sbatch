#!/bin/bash
#SBATCH --job-name=me_bash
#SBATCH --ntasks=1
#SBATCH --nodes=1
#SBATCH --mem=1gb
#SBATCH --time=00:03:00
#SBATCH --partition=windfall
#SBATCH --account=windfall
#SBATCH --mail-type=END

index=1
while [ $index -le 10 ]
    do  
        echo "Our hypothesis is right" > important_results$index
        index=$((index+1))
done

exit