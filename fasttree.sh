#PBS -P nm31 
#PBS -q normal 
#PBS -l walltime=4:00:00
#PBS -l ncpus=48
#PBS -l mem=190GB
#PBS -l jobfs=10GB
#PBS -l wd
#PBS -l storage=gdata/nm31+scratch/nm31 




FastTree -nt mafft-matrix.fna > mafft-matrix.tree



