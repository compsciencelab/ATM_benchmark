
#basename for jobs
basename=SYSTEM

#path to ASyncRE
asyncre_dir=/directory/where/AToM-OpenMM

#basename of the receptor pdb file (processed for amber using pdb4amber)
receptor=receptor #Without .pdb

#basenames of the ligand pairs (.mol2 format expected)
#with their reference alignment atoms
  ligands=("ligA     ligB")
ref_atoms=("0,0,0 0,0,0")

#displacement vector
displacement=("22.0" "22.0" "22.0")

#residue ids of the receptor that define the center of the binding site
vsite_rcpt_residues=()

