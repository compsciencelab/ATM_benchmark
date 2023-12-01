  source leaprc.protein.ff14SB
  source leaprc.gaff2
  source leaprc.water.tip3p
  RCPT = loadpdb "/shared/quico/AToM-OpenMM/Benchmark/PTP1B/receptor/PTP1B_new.pdb"
  LIG1 = loadmol2 "/shared/quico/AToM-OpenMM/Benchmark/PTP1B/ligands/20670_2qbs-p.mol2"
  loadamberparams "/shared/quico/AToM-OpenMM/Benchmark/PTP1B/ligands/20670_2qbs-p.frcmod"
  LIG2 = loadmol2 "/shared/quico/AToM-OpenMM/Benchmark/PTP1B/ligands/23466-p.mol2"
  loadamberparams "/shared/quico/AToM-OpenMM/Benchmark/PTP1B/ligands/23466-p.frcmod"
  translate LIG2 {  22.0 22.0 22.0  }
  MOL = combine {RCPT LIG1 LIG2}
  addions2 MOL Na+ 0
  addions2 MOL Cl- 0
  solvateBox MOL TIP3PBOX 10.0
  saveamberparm MOL PTP1B_new-20670_2qbs-23466.prmtop PTP1B_new-20670_2qbs-23466.inpcrd
  savepdb MOL PTP1B_new-20670_2qbs-23466.pdb
  quit
