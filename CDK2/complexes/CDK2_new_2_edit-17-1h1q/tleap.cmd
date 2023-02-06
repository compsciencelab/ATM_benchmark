  source leaprc.protein.ff14SB
  source leaprc.phosaa14SB
  source leaprc.gaff2
  source leaprc.water.tip3p
  RCPT = loadpdb "/shared/quico/AToM-OpenMM/Benchmark/CDK2/receptor/CDK2_new_2_edit.pdb"
  LIG1 = loadmol2 "/shared/quico/AToM-OpenMM/Benchmark/CDK2/ligands/17-p.mol2"
  loadamberparams "/shared/quico/AToM-OpenMM/Benchmark/CDK2/ligands/17-p.frcmod"
  LIG2 = loadmol2 "/shared/quico/AToM-OpenMM/Benchmark/CDK2/ligands/1h1q-p.mol2"
  loadamberparams "/shared/quico/AToM-OpenMM/Benchmark/CDK2/ligands/1h1q-p.frcmod"
  translate LIG2 {  -25.0 0.0 -25.0  }
  MOL = combine {RCPT LIG1 LIG2}
  addions2 MOL Na+ 0
  addions2 MOL Cl- 0
  solvateBox MOL TIP3PBOX 10.0
  saveamberparm MOL CDK2_new_2_edit-17-1h1q.prmtop CDK2_new_2_edit-17-1h1q.inpcrd
  savepdb MOL CDK2_new_2_edit-17-1h1q.pdb
  quit
