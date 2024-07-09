#!/bin/bash
#SBATCH --job-name=RNAseqPipeline
#SBATCH --mail-type=END,FAIL
#SBATCH --nodes=2
#SBATCH --cores=16
#SBATCH --output=logs/log_run.%j.log
#SBATCH --error=logs/log_run.%j.log
#SBATCH --open-mode=append


/software/global/snakemake/v7.32.4/bin/snakemake \
	--snakefile workflow/Snakefile \
	--configfile config_cluster.yml \
	--cores 16 \
	--local-cores 4 
