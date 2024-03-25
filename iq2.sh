#!/bin/bash

#PBS -P nm31 
#PBS -q normal 
#PBS -l walltime=2:00:00
#PBS -l ncpus=48
#PBS -l mem=128GB
#PBS -l jobfs=64GB
#PBS -l wd
#PBS -l storage=gdata/if89+gdata/nm31+scratch/nm31 



#species tree

iqtree2 --redo --quiet --seqtype DNA -s MO_clean/ --prefix spp_ -B 1000 -T 48 -m HKY+I+G

#gene trees (python script to run each separately)

iq2-genetrees.py "MO_clean/*.fasta" spp_genetrees/ 24

#compute gcf and scf

rm spp_genetrees/*.log spp_genetrees/*.iqtree spp_genetrees/*.gz spp_genetrees/*.mldist spp_genetrees/*.bionj spp_genetrees/*.phy spp_genetrees/*.nex spp_genetrees/*.contree

cat spp_genetrees/* > spp_genetrees.txt


iqtree2 --redo --quiet -t spp_.treefile --gcf spp_genetrees.txt -s mafft-matrix.fasta --scf 100 --prefix gcf_scf -T 48




