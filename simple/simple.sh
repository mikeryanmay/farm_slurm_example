#!/bin/bash
#SBATCH --partition=low2
#SBATCH --account=brannalagrp
#SBATCH --job-name=simple_example
#SBATCH --time=00:00:30
#SBATCH --ntasks=1

# change to user directory
cd /home/$USER/farm_slurm_example/simple/

# run your code
echo "Hello World"
