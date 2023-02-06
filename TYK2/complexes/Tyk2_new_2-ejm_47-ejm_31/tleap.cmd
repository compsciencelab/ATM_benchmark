  source leaprc.protein.ff14SB
  source leaprc.gaff2
  source leaprc.water.tip3p
  RCPT = loadpdb "/shared/quico/AToM-OpenMM/Benchmark/TYK2/receptor/Tyk2_new_2.pdb"
  LIG1 = loadmol2 "/shared/quico/AToM-OpenMM/Benchmark/TYK2/ligands/ejm_47-p.mol2"
  loadamberparams "/shared/quico/AToM-OpenMM/Benchmark/TYK2/ligands/ejm_47-p.frcmod"
  LIG2 = loadmol2 "/shared/quico/AToM-OpenMM/Benchmark/TYK2/ligands/ejm_31-p.mol2"
  loadamberparams "/shared/quico/AToM-OpenMM/Benchmark/TYK2/ligands/ejm_31-p.frcmod"
  translate LIG2 {  22.0 22.0 22.0  }
  MOL = combine {RCPT LIG1 LIG2}
  addions2 MOL Na+ 0
  addions2 MOL Cl- 0
  solvateBox MOL TIP3PBOX 10.0
  saveamberparm MOL Tyk2_new_2-ejm_47-ejm_31.prmtop Tyk2_new_2-ejm_47-ejm_31.inpcrd
  savepdb MOL Tyk2_new_2-ejm_47-ejm_31.pdb
  quit
