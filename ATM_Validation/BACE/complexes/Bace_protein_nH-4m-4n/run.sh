#!/bin/bash
#
#SBATCH -J Bace_protein_nH-4m-4n
#SBATCH --partition=gpu-shared
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --gres=gpu:1
#SBATCH --cpus-per-task=2
#SBATCH --account=<account>
#SBATCH --no-requeue
#SBATCH -t 10:00:00

. ~/miniconda3/bin/activate atm
echo "Running on $(hostname)"

if [ ! -f Bace_protein_nH-4m-4n_0.xml ]; then
   python /shared/quico/AToM-OpenMM/rbfe_structprep.py ${jobname}_asyncre.cntl || exit 1
fi

echo "localhost,0:0,1,CUDA,,/tmp" > nodefile
python /shared/quico/AToM-OpenMM/rbfe_explicit.py Bace_protein_nH-4m-4n_asyncre.cntl
