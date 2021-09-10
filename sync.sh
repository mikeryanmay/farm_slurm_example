#!/bin/bash

# synchronize simple output
rsync -a -e ssh $1:~/farm_slurm_example/simple/output simple/ 
rsync -a -e ssh $1:~/farm_slurm_example/simple/log simple/ 

# synchronize multiple output
rsync -a -e ssh $1:~/farm_slurm_example/multiple/output multiple/ 
rsync -a -e ssh $1:~/farm_slurm_example/multiple/log multiple/ 

# synchronize parallel output
rsync -a -e ssh $1:~/farm_slurm_example/parallel/output parallel/ 
rsync -a -e ssh $1:~/farm_slurm_example/parallel/log parallel/ 

# synchronize array output
rsync -a -e ssh $1:~/farm_slurm_example/array/output array/ 
rsync -a -e ssh $1:~/farm_slurm_example/array/log array/ 
