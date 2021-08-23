#!/bin/bash
#SBATCH --partition=low2
#SBATCH --account=brannalagrp
#SBATCH --output=/home/%u/farm_slurm_example/simple/slurm_log/simple-stdout-%j.txt
#SBATCH --error=/home/%u/farm_slurm_example/simple/slurm_log/simple-stderr-%j.txt
#SBATCH --job-name=simple_example
#SBATCH --time=00:00:30
#SBATCH --ntasks=1

# change to user directory
cd /home/$USER/farm_slurm_example/simple/

# run your code
echo "Hello World"
