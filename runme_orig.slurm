#!/bin/bash
#SBATCH --partition gpgpu
#SBATCH --qos=gpgpuresplat

#SBATCH --gres=gpu:1
#SBATCH --nodes=1
#SBATCH --ntasks=6
#SBATCH --time=23:59:59
#SBATCH --output runme_orig.out
#SBATCH --open-mode=truncate
#SBATCH --job-name=runme
#SBATCH --mail-type=ALL
#SBATCH --mail-user=nathaniel.bloomfield@unimelb.edu.au

module load fosscuda/2020b
module load pytorch/1.9.0-python-3.8.6

python main.py \
  --sel paws_train \
  --fname configs/paws/cifar10_train.yaml
