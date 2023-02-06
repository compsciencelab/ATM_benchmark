  source leaprc.protein.ff14SB
  source leaprc.gaff2
  source leaprc.water.tip3p
  RCPT = loadpdb "/shared/quico/AToM-OpenMM/Benchmark/MCL1_pmx/receptor/MCL1_pmx.pdb"
  LIG1 = loadmol2 "/shared/quico/AToM-OpenMM/Benchmark/MCL1_pmx/ligands/67-p.mol2"
  loadamberparams "/shared/quico/AToM-OpenMM/Benchmark/MCL1_pmx/ligands/67-p.frcmod"
  LIG2 = loadmol2 "/shared/quico/AToM-OpenMM/Benchmark/MCL1_pmx/ligands/32-p.mol2"
  loadamberparams "/shared/quico/AToM-OpenMM/Benchmark/MCL1_pmx/ligands/32-p.frcmod"
  translate LIG2 {  22.0 22.0 22.0  }
  MOL = combine {RCPT LIG1 LIG2}
  addions2 MOL Na+ 0
  addions2 MOL Cl- 0
  solvateBox MOL TIP3PBOX 10.0
  saveamberparm MOL MCL1_pmx-67-32.prmtop MCL1_pmx-67-32.inpcrd
  savepdb MOL MCL1_pmx-67-32.pdb
  quit
