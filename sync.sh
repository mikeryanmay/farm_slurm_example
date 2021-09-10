#!/bin/bash

# syncronize simple output
rsync -a -e ssh $1:~/farm_slurm_example/simple/output simple/ 
rsync -a -e ssh $1:~/farm_slurm_example/simple/log simple/ 

# syncronize parallel output
rsync -a -e ssh $1:~/farm_slurm_example/parallel/output multi/ 
rsync -a -e ssh $1:~/farm_slurm_example/parallel/log multi/ 

# syncronize array output
rsync -a -e ssh $1:~/farm_slurm_example/array/output array/ 
rsync -a -e ssh $1:~/farm_slurm_example/array/log array/ 
