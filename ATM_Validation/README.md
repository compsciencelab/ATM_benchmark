# ATM Validation
## Summary
Here you can find the input files for 8 protein-ligand systems (330 ligand pairs) to use with the Alchemical Transfer Method(ATM). We used the inputs from the paper of [Wang _et al_](https://pubs.acs.org/doi/10.1021/ja512751q).

## Installation and Usage
This files are related to a study performed with ATM. To install the files necessary to perform this protocol please see [ATM's github page](https://github.com/Gallicchio-Lab/AToM-OpenMM).

If you want to follow more detailed tutorials please check the [following examples](https://github.com/Gallicchio-Lab/AToM-OpenMM/tree/master/examples) from the same repository.

```
Note: ATM has been considerably updated/upgraded since the publication of this work. Although the scripts used are probably not usable with currents version of AToM the input files included in this repo along with the updated script and examples should suffice to replicate this work.
```

## Folder structure
### For every system
```
-ligands: every ligand is parameterized with GAFF2 as seen in the setup-atm.sh script. Raw and parameterized (ligand-p) mol2 files are available.
-receptor: used receptor.pdb file for the generation of the complexes.
-complexes: required files to perform equilibration and running ATM for every calculated ligand pair.
```
`ATM_data.csv` : calculated ddG values for all protein-ligand datasets.

`scripts`: scripts required to prepare your system for ATM calculations. 

## Citation
[Validation of the Alchemical Transfer Method for the Estimation of Relative Binding Affinities of Molecular Series](https://pubs.acs.org/doi/abs/10.1021/acs.jcim.3c00178)
