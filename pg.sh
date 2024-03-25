#PBS -P nm31 
#PBS -q normal 
#PBS -l walltime=12:01:00
#PBS -l ncpus=1
#PBS -l mem=190GB
#PBS -l jobfs=128GB
#PBS -l wd
#PBS -l storage=gdata/if89+gdata/nm31+scratch/nm31 

module load mafft
module load perllib
module load hmmer

#Add extra outgroups, e.g. og2, og3 etc as below with extra '--internal_outgroup' parameter for each.
#This example outputs --mo method only

og1="outgroup sampleID"

paragone full_pipeline mafft_aligned/  --internal_outgroup $og1 --pool 6 --threads 8 --use_fasttree --mo 

