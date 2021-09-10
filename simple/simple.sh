#!/bin/bash
#SBATCH --partition=low2
#SBATCH --account=brannalagrp
#SBATCH --job-name=simple_example
#SBATCH --mail-user=mikeryanmay@gmail.edu
#SBATCH --mail-type=ALL
#SBATCH --time=00:00:30
#SBATCH --nodes=1
#SBATCH --ntasks=1

# change to user directory
cd /home/$USER/farm_slurm_example/simple/

# make the output directory
mkdir -p output

# run your code
echo "Hello World" > output/simple.txt

# move log file
mkdir -p log
mv "slurm-${SLURM_JOB_ID}.out" "log/slurm-${SLURM_JOB_ID}.out"
