#!/bin/bash
#
#SBATCH --qos=cu_hpc
#SBATCH --partition=cpu,cpugpu
#SBATCH --job-name=orca-docker    #change with name of the job
#SBATCH --output=output%j.out           # specific output name
#SBATCH --error=error%j.out             # specific error name
#SBATCH --nodes=1
#SBATCH --ntasks=32
#SBATCH --time=14-00:00:00
#SBATCH --mem=44G

# Manage processing environment,load compilers and applications.
module purge
module load OpenMPI/4.1.4-GCC-11.3.0

export PATH=/work/home/ismaildp/orca:$PATH 

/work/home/ismaildp/orca/orca pac1.inp > pac1.out
/work/home/ismaildp/orca/orca K-09.inp > K-09.out
/work/home/ismaildp/orca/orca K-15.inp > K-15.out
/work/home/ismaildp/orca/orca D1.inp > D1.out
/work/home/ismaildp/orca/orca D5.inp > D5.out
/work/home/ismaildp/orca/orca N18.inp > N18.out