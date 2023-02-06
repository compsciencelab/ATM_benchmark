  source leaprc.protein.ff19SB
  source leaprc.gaff2
  source leaprc.water.tip3p
  RCPT = loadpdb "/shared/quico/AToM-OpenMM/Benchmark/Thrombin/receptor/thrombin_noH_2.pdb"
  LIG1 = loadmol2 "/shared/quico/AToM-OpenMM/Benchmark/Thrombin/ligands/1d-p.mol2"
  loadamberparams "/shared/quico/AToM-OpenMM/Benchmark/Thrombin/ligands/1d-p.frcmod"
  LIG2 = loadmol2 "/shared/quico/AToM-OpenMM/Benchmark/Thrombin/ligands/7a-p.mol2"
  loadamberparams "/shared/quico/AToM-OpenMM/Benchmark/Thrombin/ligands/7a-p.frcmod"
  translate LIG2 {  22.0 22.0 22.0  }
  MOL = combine {RCPT LIG1 LIG2}
  addions2 MOL Na+ 0
  addions2 MOL Cl- 0
  solvateBox MOL TIP3PBOX 10.0
  saveamberparm MOL thrombin_noH_2-1d-7a.prmtop thrombin_noH_2-1d-7a.inpcrd
  savepdb MOL thrombin_noH_2-1d-7a.pdb
  quit
