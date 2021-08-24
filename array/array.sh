#!/bin/bash
#SBATCH --partition=low2
#SBATCH --account=brannalagrp
#SBATCH --job-name=array_example_%J
#SBATCH --mail-user=mikeryanmay@gmail.edu
#SBATCH --mail-type=ALL
#SBATCH --time=00:00:30
#SBATCH --ntasks=20
#SBATCH --array=1-10

# change to user directory
cd /home/$USER/farm_slurm_example/array/

# move log file
mkdir -p log
mv "slurm-%A_%a.out" "log/slurm-%A_%a.out"

# make output directory
mkdir -p output

# run code
parallel -j $SLURM_CPUS_ON_NODE "echo ${SLURM_ARRAY_TASK_ID} -- {%} > 'output/array_${SLURM_ARRAY_TASK_ID}_proc_{}.txt'" ::: {1..100}
