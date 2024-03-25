#PBS -P nm31 
#PBS -q normal 
#PBS -l walltime=8:00:00
#PBS -l ncpus=48
#PBS -l mem=190GB
#PBS -l jobfs=100GB
#PBS -l wd
#PBS -l storage=gdata/nm31+scratch/nm31+gdata/if89


module load mafft


mafft.py genes/ mafft_aligned/ 48


