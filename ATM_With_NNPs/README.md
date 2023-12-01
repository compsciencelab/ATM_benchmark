# ATM wit NNPs
## Summary
Here you can find the input files used in our study of RBFE with NNPs. We used the inputs from the paper of [Wang _et al_](https://pubs.acs.org/doi/10.1021/ja512751q) and [Schindler_et al_]()

## Installation and Usage
To install the specific version required to be able to run ATM with ANI2x please refer to our [fork with the necessary changes](https://github.com/compsciencelab/AToM-OpenMM)
Please realize that for NNP `opennmm-ml` and `nnpops` installation is required
## Folder structure
### For every system
```
-complexes: build of each of the complex systems for every ligand pair
```
To run each calculation:
First equilibrate the system:

`rbfe_structprep.py ligand_pair.cntl`

And once the system is successfully equilibrated you can run production:

`rbfe_explicity.py ligand_pair.cntl`

If you wish to run that same ligand pair without NNP mode just delete the following line from the `.cntl` file

`NNP_MODEL = ani2x`

## Citation
Enhancing Protein-Ligand Binding Affinity Predictions using an NNP/MM approach
