#!/bin/bash
#SBATCH --partition=low2
#SBATCH --account=brannalagrp
#SBATCH --output=/home/%u/farm_slurm_example/multi/multi-stdout-%j.out
#SBATCH --error=/home/%u/farm_slurm_example/multi/multi-stderr-%j.out
#SBATCH --job-name=multi_example
#SBATCH --mail-user=mikeryanmay@gmail.edu
#SBATCH --mail-type=ALL
#SBATCH --time=00:00:30
#SBATCH --ntasks=20

# change to user directory
# cd /home/$USER/farm_slurm_example/multi/

# run your code
mkdir -p output

writeTime () {
	echo $(date +"%T") > "output/time_$1.txt"
	sleep 2
}
export -f writeTime

parallel -j $SLURM_CPUS_ON_NODE writeTime ::: {1..100}
