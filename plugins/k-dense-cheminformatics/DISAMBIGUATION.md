# Skill Disambiguation — Cheminformatics

## Molecular Tools (6 skills — complexity ladder)

```
"I need to work with molecules"
  │
  ├─ Standard workflows (parse, descriptors, fingerprints)?
  │   ├─ Simple API → datamol (RDKit wrapper, sensible defaults)
  │   └─ Advanced control → rdkit (low-level, custom sanitization)
  │
  ├─ Cloud molecular modeling platform?
  │   └─ rowan — pKa, docking, conformers, MD via API
  │
  ├─ ML on molecules (property prediction, QSAR)?
  │   ├─ Featurization only → molfeat (100+ featurizers)
  │   ├─ Full ML pipeline → deepchem (models + datasets + benchmarks)
  │   └─ Custom GNN architectures → torchdrug
  │
  ├─ Drug-likeness filtering?
  │   └─ medchem — Lipinski, PAINS, structural alerts
  │
  ├─ Molecular docking?
  │   └─ diffdock — diffusion-based pose prediction
  │
  ├─ Molecular dynamics simulation?
  │   └─ molecular-dynamics — OpenMM + MDAnalysis
  │
  └─ Drug discovery datasets?
      └─ pytdc — ADME, toxicity, DTI benchmarks
```

### Decision Matrix

| Task | First choice | Alternative |
|------|-------------|-------------|
| Parse SMILES, compute descriptors | datamol | rdkit (if need custom control) |
| Fingerprints for similarity search | datamol | rdkit |
| QSAR model training | deepchem | scikit-learn + molfeat |
| Molecular featurization for custom ML | molfeat | deepchem |
| Drug-likeness check | medchem | — |
| Protein-ligand docking | diffdock | rowan (cloud) |
| pKa prediction | rowan | — |
| MD simulation | molecular-dynamics | — |
| Benchmark datasets | pytdc | deepchem |
| GNN for molecules | torchdrug | torch-geometric + molfeat |

**Key rule**: Start with `datamol` for molecular ops. Drop to `rdkit` only when datamol's simplified API doesn't expose what you need.
