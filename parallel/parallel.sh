#!/bin/bash
#SBATCH --partition=low2
#SBATCH --account=brannalagrp
#SBATCH --job-name=parallel_example
#SBATCH --mail-user=mikeryanmay@gmail.edu
#SBATCH --mail-type=ALL
#SBATCH --nodes=1
#SBATCH --ntasks=20
#SBATCH --time=00:00:30

# change to user directory
cd /home/$USER/farm_slurm_example/parallel/

# make the output directory
mkdir -p output

# run your code
parallel -j $SLURM_CPUS_ON_NODE "echo {%} > 'output/proc_{}.txt'" ::: {1..100}

# move log file
mkdir -p log
mv "slurm-${SLURM_JOB_ID}.out" "log/slurm-${SLURM_JOB_ID}.out"
