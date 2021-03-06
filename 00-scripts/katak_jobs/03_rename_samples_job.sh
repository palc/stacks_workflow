#!/bin/bash
#SBATCH -J "rename"
#SBATCH -o log_%j
#SBATCH -c 1
#SBATCH -p ibismax
#SBATCH -A ibismax
#SBATCH --mail-type=FAIL
#SBATCH --mail-user=YOUREMAIL
#SBATCH --time=1-00:00
#SBATCH --mem=1G

# Move to directory where job was submitted
cd $SLURM_SUBMIT_DIR

# Process radtags with one CPU or more (also change CPU number above)
./00-scripts/03_rename_samples.sh
