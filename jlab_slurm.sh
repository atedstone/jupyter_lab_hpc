#!/bin/bash

#SBATCH --job-name=jupyterlab
#SBATCH --output=/home/tedstona/_jlab_logs/%x-%j.out
#SBATCH --error=/home/tedstona/_jlab_logs/%x-%j.err
#SBATCH --time=48:00:00
#SBATCH --cpus-per-task=4
#SBATCH --mem-per-cpu=6000
#SBATCH --account=unifr
#SBATCH --partition=new
#####SBATCH -w node75

hostname
source ~/.bashrc
source ~/scripts/start_jlab.sh
