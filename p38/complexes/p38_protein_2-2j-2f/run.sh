#!/bin/bash
#
#SBATCH -J p38_protein_2-2j-2f
#SBATCH --partition=gpu-shared
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --gpus=1
#SBATCH --account=TG-MCB150001
#SBATCH --no-requeue
#SBATCH -t 10:00:00

. ~/miniconda3/bin/activate atm
echo "Running on $(hostname)"

if [ ! -f p38_protein_2-2j-2f_0.xml ]; then
   python p38_protein_2-2j-2f_mintherm.py && python p38_protein_2-2j-2f_mdlambda.py || exit 1
fi

echo "localhost,0:0,1,CUDA,,/tmp" > nodefile
python /shared/quico/AToM-OpenMM/rbfe_explicit.py p38_protein_2-2j-2f_asyncre.cntl
