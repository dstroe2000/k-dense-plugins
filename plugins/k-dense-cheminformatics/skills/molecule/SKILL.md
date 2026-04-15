---
name: molecule
description: Router for molecular and cheminformatics skills. Use when the user wants to work with molecules, SMILES, chemical structures, drug discovery, or molecular modeling. Routes to the correct tool based on task.
allowed-tools: Skill
---

# Molecule — Router

You are a routing skill. Analyze the user's request and invoke the correct cheminformatics skill.

## Decision Logic

1. **Parse SMILES, compute descriptors, fingerprints (simple)** → invoke `datamol`
2. **Advanced molecular control, custom sanitization** → invoke `rdkit`
3. **Drug-likeness filtering (Lipinski, PAINS)** → invoke `medchem`
4. **Molecular featurization for ML** → invoke `molfeat`
5. **Full ML pipeline (property prediction, QSAR)** → invoke `deepchem`
6. **GNN architectures on molecules** → invoke `torchdrug`
7. **Protein-ligand docking** → invoke `diffdock`
8. **Cloud molecular modeling (pKa, conformers)** → invoke `rowan`
9. **Molecular dynamics simulation** → invoke `molecular-dynamics`
10. **Drug discovery benchmark datasets** → invoke `pytdc`
11. **Default / "work with this molecule"** → invoke `datamol`

## Execution

1. Read the user's request (including `$ARGUMENTS`)
2. Match against decision logic above
3. Briefly state which skill you're routing to and why (one line)
4. Invoke the selected skill using the Skill tool
