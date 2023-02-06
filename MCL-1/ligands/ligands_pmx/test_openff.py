# Create an OpenFF Molecule object from the ligand SDF fiel
from openff.toolkit.topology import Molecule

ligand_off_molecule = Molecule("27.sdf")

# Load the SMIRNOFF-format Sage force field
from openff.toolkit.typing.engines.smirnoff import ForceField

force_field = ForceField("openff_unconstrained-2.0.0.offxml")

# Parametrize the ligand molecule by creating a Topology object from it
ligand_system = force_field.create_openmm_system(ligand_off_molecule.to_topology())
try:
    from openmm import XmlSerializer, app, unit
    from openmm.app import HBonds, NoCutoff, PDBFile
except ImportError:
    from simtk import unit
    from simtk.openmm import XmlSerializer, app
    from simtk.openmm.app import HBonds, NoCutoff, PDBFile
# Read in the coordinates of the ligand from the PDB file
ligand_pdbfile = PDBFile("27.pdb")

# Convert OpenMM System object containing ligand parameters into a ParmEd Structure.
import parmed

ligand_structure = parmed.openmm.load_topology(
    ligand_pdbfile.topology, ligand_system, xyz=ligand_pdbfile.positions
)
