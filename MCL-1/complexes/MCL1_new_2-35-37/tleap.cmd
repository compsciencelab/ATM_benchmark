  source leaprc.protein.ff14SB
  source leaprc.gaff2
  source leaprc.water.tip3p
  RCPT = loadpdb "/shared/quico/AToM-OpenMM/Benchmark/MCL-1/receptor/MCL1_new_2.pdb"
  LIG1 = loadmol2 "/shared/quico/AToM-OpenMM/Benchmark/MCL-1/ligands/35-p.mol2"
  loadamberparams "/shared/quico/AToM-OpenMM/Benchmark/MCL-1/ligands/35-p.frcmod"
  LIG2 = loadmol2 "/shared/quico/AToM-OpenMM/Benchmark/MCL-1/ligands/37-p.mol2"
  loadamberparams "/shared/quico/AToM-OpenMM/Benchmark/MCL-1/ligands/37-p.frcmod"
  translate LIG2 {  22.0 22.0 22.0  }
  MOL = combine {RCPT LIG1 LIG2}
  addions2 MOL Na+ 0
  addions2 MOL Cl- 0
  solvateBox MOL TIP3PBOX 10.0
  saveamberparm MOL MCL1_new_2-35-37.prmtop MCL1_new_2-35-37.inpcrd
  savepdb MOL MCL1_new_2-35-37.pdb
  quit
