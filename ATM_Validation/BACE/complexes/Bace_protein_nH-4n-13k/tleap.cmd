  source leaprc.protein.ff14SB
  source leaprc.gaff2
  source leaprc.water.tip3p
  RCPT = loadpdb "/shared/quico/AToM-OpenMM/Benchmark/BACE/receptor/Bace_protein_nH.pdb"
  LIG1 = loadmol2 "/shared/quico/AToM-OpenMM/Benchmark/BACE/ligands/4n-p.mol2"
  loadamberparams "/shared/quico/AToM-OpenMM/Benchmark/BACE/ligands/4n-p.frcmod"
  LIG2 = loadmol2 "/shared/quico/AToM-OpenMM/Benchmark/BACE/ligands/13k-p.mol2"
  loadamberparams "/shared/quico/AToM-OpenMM/Benchmark/BACE/ligands/13k-p.frcmod"
  translate LIG2 {  20.0 -30.0 20.0  }
  MOL = combine {RCPT LIG1 LIG2}
  addions2 MOL Na+ 0
  addions2 MOL Cl- 0
  solvateBox MOL TIP3PBOX 10.0
  saveamberparm MOL Bace_protein_nH-4n-13k.prmtop Bace_protein_nH-4n-13k.inpcrd
  savepdb MOL Bace_protein_nH-4n-13k.pdb
  quit
