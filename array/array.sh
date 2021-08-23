#!/bin/bash
#SBATCH --partition=low2
#SBATCH --account=brannalagrp
#SBATCH --output=/home/%u/farm_slurm_example/array/log/array-stdout-%j.out
#SBATCH --error=/home/%u/farm_slurm_example/array/log/array-stderr-%j.out
#SBATCH --job-name=array_example
#SBATCH --mail-user=mikeryanmay@gmail.edu
#SBATCH --mail-type=ALL
#SBATCH --time=00:00:30
#SBATCH --ntasks=20
#SBATCH --array=1-10

# change to user directory
cd /home/$USER/farm_slurm_example/array/

# run your code
mkdir -p output

parallel -j $SLURM_CPUS_ON_NODE "echo ${SLURM_ARRAY_TASK_ID} -- {%} > 'output/array_${SLURM_ARRAY_TASK_ID}_proc_{}.txt'" ::: {1..100}
