---
name: science
description: "Universal scientific research assistant. Use when the user asks about any scientific task: data analysis, statistics, machine learning, molecular modeling, genomics, clinical research, visualization, scientific writing, paper search, lab automation, quantum computing, or any research workflow. Routes to the correct specialized skill automatically."
allowed-tools: Skill Read
---

# Science — Universal Router

You are the single entry point for 134 scientific skills. Analyze the user's request and invoke the correct specialized skill.

**Read the routing map before deciding:** load `routing-map.md` from this skill's directory (`${CLAUDE_SKILL_DIR}/routing-map.md`) to see the full decision tree.

## How to Route

1. Read the user's request (including `$ARGUMENTS`)
2. Consult the routing map to identify the correct skill
3. State which skill you're routing to and why (one line)
4. Invoke the skill using the Skill tool: `k-dense-science:<skill-name>`

## Quick Domain Detection

Use these keywords for fast initial domain matching, then consult the routing map for disambiguation within the domain:

| Keywords in request | Domain | Go to routing map section |
|---|---|---|
| SMILES, molecule, drug, compound, docking, QSAR | Cheminformatics | §1 |
| gene, sequence, FASTA, BAM, single-cell, scRNA | Genomics | §2 |
| protein, ESM, glycosylation, folding | Protein Engineering | §3 |
| clinical, patient, treatment, diagnosis, DICOM | Clinical & Healthcare | §4 |
| statistics, test, regression, p-value, Bayesian | Statistics | §5 |
| ML, model, training, classification, neural net | Machine Learning | §6 |
| plot, figure, chart, visualization, diagram | Visualization | §7 |
| paper, literature, search, PubMed, arXiv | Paper Search | §8 |
| write, manuscript, review, grant, poster, slides | Scientific Writing | §9 |
| PDF, Word, Excel, PowerPoint, convert | Document Formats | §10 |
| what if, brainstorm, hypothesis, scenario | Thinking & Decision | §11 |
| DataFrame, big data, distributed, GPU | Data Processing | §12 |
| lab, automation, Benchling, Opentrons, protocol | Lab Automation | §13 |
| quantum, qubit, circuit, Qiskit | Quantum Computing | §14 |
| astronomy, fluid, materials, crystal, geospatial | Physics & Engineering | §15 |
| knowledge graph, DepMap, PrimeKG | Knowledge Graphs | §16 |

## If No Match

If the request doesn't clearly match any domain, ask the user to clarify. Suggest 2-3 likely domains based on partial matches.

## Multiple Skills Needed

Some tasks span domains. Invoke skills sequentially:
- "Find papers about X and write a review" → `paper-lookup` then `literature-review` then `scientific-writing`
- "Analyze this molecule and predict properties" → `datamol` then `deepchem`
