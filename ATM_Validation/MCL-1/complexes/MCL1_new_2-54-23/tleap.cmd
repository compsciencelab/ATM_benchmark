  source leaprc.protein.ff14SB
  source leaprc.gaff2
  source leaprc.water.tip3p
  RCPT = loadpdb "/shared/quico/AToM-OpenMM/Benchmark/MCL-1/receptor/MCL1_new_2.pdb"
  LIG1 = loadmol2 "/shared/quico/AToM-OpenMM/Benchmark/MCL-1/ligands/54-p.mol2"
  loadamberparams "/shared/quico/AToM-OpenMM/Benchmark/MCL-1/ligands/54-p.frcmod"
  LIG2 = loadmol2 "/shared/quico/AToM-OpenMM/Benchmark/MCL-1/ligands/23-p.mol2"
  loadamberparams "/shared/quico/AToM-OpenMM/Benchmark/MCL-1/ligands/23-p.frcmod"
  translate LIG2 {  22.0 22.0 22.0  }
  MOL = combine {RCPT LIG1 LIG2}
  addions2 MOL Na+ 0
  addions2 MOL Cl- 0
  solvateBox MOL TIP3PBOX 10.0
  saveamberparm MOL MCL1_new_2-54-23.prmtop MCL1_new_2-54-23.inpcrd
  savepdb MOL MCL1_new_2-54-23.pdb
  quit
