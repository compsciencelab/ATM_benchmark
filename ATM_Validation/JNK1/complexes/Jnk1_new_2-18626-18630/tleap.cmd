  source leaprc.protein.ff19SB
  source leaprc.gaff2
  source leaprc.water.tip3p
  RCPT = loadpdb "/shared/quico/AToM-OpenMM/Benchmark/JNK1/receptor/Jnk1_new_2.pdb"
  LIG1 = loadmol2 "/shared/quico/AToM-OpenMM/Benchmark/JNK1/ligands/18626-p.mol2"
  loadamberparams "/shared/quico/AToM-OpenMM/Benchmark/JNK1/ligands/18626-p.frcmod"
  LIG2 = loadmol2 "/shared/quico/AToM-OpenMM/Benchmark/JNK1/ligands/18630-p.mol2"
  loadamberparams "/shared/quico/AToM-OpenMM/Benchmark/JNK1/ligands/18630-p.frcmod"
  translate LIG2 {  22.0 22.0 22.0  }
  MOL = combine {RCPT LIG1 LIG2}
  addions2 MOL Na+ 0
  addions2 MOL Cl- 0
  solvateBox MOL TIP3PBOX 10.0
  saveamberparm MOL Jnk1_new_2-18626-18630.prmtop Jnk1_new_2-18626-18630.inpcrd
  savepdb MOL Jnk1_new_2-18626-18630.pdb
  quit
