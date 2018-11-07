#!/bin/bash

#Submit this script with: sbatch thefilename

#SBATCH --time=4:00:00   # walltime
#SBATCH --ntasks=32   # number of processor cores (i.e. tasks)
#SBATCH --mem-per-cpu=1G   # memory per CPU core
#SBATCH -J "bomex-test"   # job name
#SBATCH --mail-user=csinger@caltech.edu   # email address
#SBATCH --mail-type=BEGIN
#SBATCH --mail-type=END
#SBATCH --mail-type=FAIL


# LOAD MODULES, INSERT CODE, AND RUN YOUR PROGRAMS HERE
srun python main.py Bomex.in
