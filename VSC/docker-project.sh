#!/bin/bash

#SBATCH --job-name=jbuild-apptainer
#SBATCH --partition=donphan
#SBATCH --mem=8G
#SBATCH --time=00:30:00


LOG_DIR="$VSC_SCRATCH/logs"
mkdir -p $LOG_DIR

echo "build containers on VSC"

apptainer build --fakeroot python-train-sd.sif docker://saradufour/python-train-sd:v1.0.0 > $LOG_DIR/python-train-sd-OUT.log 2>&1
apptainer build --fakeroot python-server-sd.sif docker://saradufour/python-server-sd:v1.0.0 > $LOG_DIR/python-server-sd-OUT.log 2>&1

echo "You can now run your container"
