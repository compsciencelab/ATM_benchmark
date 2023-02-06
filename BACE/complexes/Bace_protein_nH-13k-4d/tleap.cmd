  source leaprc.protein.ff14SB
  source leaprc.gaff2
  source leaprc.water.tip3p
  RCPT = loadpdb "/shared/quico/AToM-OpenMM/Benchmark/BACE/receptor/Bace_protein_nH.pdb"
  LIG1 = loadmol2 "/shared/quico/AToM-OpenMM/Benchmark/BACE/ligands/13k-p.mol2"
  loadamberparams "/shared/quico/AToM-OpenMM/Benchmark/BACE/ligands/13k-p.frcmod"
  LIG2 = loadmol2 "/shared/quico/AToM-OpenMM/Benchmark/BACE/ligands/4d-p.mol2"
  loadamberparams "/shared/quico/AToM-OpenMM/Benchmark/BACE/ligands/4d-p.frcmod"
  translate LIG2 {  20.0 -30.0 20.0  }
  MOL = combine {RCPT LIG1 LIG2}
  addions2 MOL Na+ 0
  addions2 MOL Cl- 0
  solvateBox MOL TIP3PBOX 10.0
  saveamberparm MOL Bace_protein_nH-13k-4d.prmtop Bace_protein_nH-13k-4d.inpcrd
  savepdb MOL Bace_protein_nH-13k-4d.pdb
  quit
