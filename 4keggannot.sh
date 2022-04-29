#!/bin/bash

#BATCH -p general
#SBATCH --nodes=1
#SBATCH --time=0-5:00:00
#SBATCH --mem=300G
#SBATCH --ntasks=24
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --mail-user=lilalbar@ad.unc.edu
#SBATCH -J keggannot
#SBATCH -o keggannot.%A.out
#SBATCH -e keggannot.%A.err

cd /pine/scr/l/i/lilalbar/p.lunula_fastq/github/trinity_assembly/Annotation
#git clone https://github.com/ctberthiaume/keggannot.git
#git clone https://github.com/AlexanderLabWHOI/keggannot.git
cd keggannot/
module purge

#module load python/3.5.1
module load python/2.7.12 

#python2 setup.py install --user

./bin/keggannot_genes2ko -m /nas/longleaf/data/KEGG/KEGG /pine/scr/l/i/lilalbar/p.lunula_fastq/github/trinity_assembly/Annotation/clustered_assembly_kegg_annotation.m8 -o ../annotated_kegg_information.tsv
