#!/bin/bash
#SBATCH --partition=low2
#SBATCH --account=brannalagrp
#SBATCH --output=/home/%u/farm_slurm_example/simple/simple-stdout-%j.out
#SBATCH --error=/home/%u/farm_slurm_example/simple/simple-stderr-%j.out
#SBATCH --job-name=simple_example
#SBATCH --mail-user=mikeryanmay@gmail.edu
#SBATCH --mail-type=ALL
#SBATCH --time=00:00:30
#SBATCH --ntasks=1

# change to user directory
cd /home/$USER/farm_slurm_example/simple/

# run your code
mkdir -p output

echo "Hello World" > output/simple.txt
