ligand=67-2
antechamber -pl 15 -fi pdb -fo mol2 -i $ligand.pdb -o $ligand-p.mol2 -c bcc -at gaff2 -nc -1
parmchk2 -i $ligand-p.mol2 -o $ligand-p.frcmod -f mol2

