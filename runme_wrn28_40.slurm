#!/bin/bash
#SBATCH --partition gpu-a100
# #SBATCH --partition gpgpu
# #SBATCH --qos=gpgpuresplat

#SBATCH --gres=gpu:1
#SBATCH --nodes=1
#SBATCH --ntasks=6
#SBATCH --time=23:59:59
#SBATCH --output runme_wrn28_40.out
#SBATCH --open-mode=truncate
#SBATCH --job-name=runme_wrn28_40
#SBATCH --mail-type=ALL
#SBATCH --mail-user=nathaniel.bloomfield@unimelb.edu.au

module load fosscuda/2020b
module load pytorch/1.9.0-python-3.8.6

python main.py \
  --sel paws_train \
  --fname configs/paws/cifar10_train_wrn28_40.yaml


python snn_eval.py \
  --model-name wide_resnet28w2 \
  --pretrained log/cifar10_wrn28_40/paws-best.pth.tar \
  --root-path datasets \
  --image-folder cifar10-data \
  --dataset-name cifar10_fine_tune \
  --split-seed 152 \
  --unlabeled-frac 0.9992 \
  --subset-path 'cifar10_subsets/'

