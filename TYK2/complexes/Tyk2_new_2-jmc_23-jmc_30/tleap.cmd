  source leaprc.protein.ff19SB
  source leaprc.gaff2
  source leaprc.water.tip3p
  RCPT = loadpdb "/shared/quico/AToM-OpenMM/Benchmark/TYK2/receptor/Tyk2_new_2.pdb"
  LIG1 = loadmol2 "/shared/quico/AToM-OpenMM/Benchmark/TYK2/ligands/jmc_23-p.mol2"
  loadamberparams "/shared/quico/AToM-OpenMM/Benchmark/TYK2/ligands/jmc_23-p.frcmod"
  LIG2 = loadmol2 "/shared/quico/AToM-OpenMM/Benchmark/TYK2/ligands/jmc_30-p.mol2"
  loadamberparams "/shared/quico/AToM-OpenMM/Benchmark/TYK2/ligands/jmc_30-p.frcmod"
  translate LIG2 {  22.0 22.0 22.0  }
  MOL = combine {RCPT LIG1 LIG2}
  addions2 MOL Na+ 0
  addions2 MOL Cl- 0
  solvateBox MOL TIP3PBOX 10.0
  saveamberparm MOL Tyk2_new_2-jmc_23-jmc_30.prmtop Tyk2_new_2-jmc_23-jmc_30.inpcrd
  savepdb MOL Tyk2_new_2-jmc_23-jmc_30.pdb
  quit
