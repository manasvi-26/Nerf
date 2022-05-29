#!/bin/bash
#SBATCH -A research
#SBATCH -n 10
#SBATCH --gres=gpu:1
#SBATCH --mincpus=10
#SBATCH --mem-per-cpu=2048
#SBATCH --time=72:00:00
#SBATCH --output=log_file.txt

module load cuda/11.0
module load cudnn/8-cuda-11.0 

touch /home2/mehul.mathur/nerf/output_nerf.txt
source /home2/mehul.mathur/nerf/Nerf/bin/activate

python3 /home2/mehul.mathur/nerf/run_nerf.py --config configs/lego.txt > /home2/mehul.mathur/nerf/output_nerf.txt
