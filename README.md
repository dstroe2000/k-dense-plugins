# K-Dense Science — Claude Code Plugin

> **Based on [K-Dense-AI/scientific-agent-skills](https://github.com/K-Dense-AI/scientific-agent-skills)** by [K-Dense Inc.](https://github.com/K-Dense-AI). All 134 skills are their original work. This repo repackages them as a single Claude Code plugin with a gateway router — no skill content is modified.

## How it works

One plugin. One command. 134 skills.

```
/science analyze this SMILES molecule for drug-likeness
```

The `/science` gateway reads your request, consults a routing map, and invokes the correct specialized skill. All 134 skills are bundled but hidden from Claude's auto-discovery — only the gateway is visible, keeping your context clean.

## Installation

### Option 1: Clone and copy (simplest)

```bash
git clone --recurse-submodules https://github.com/dstroe2000/k-dense-plugins.git
cp -r k-dense-plugins/plugins/k-dense-science/skills/* ~/.claude/skills/
```

### Option 2: Plugin system

```
/plugin marketplace add dstroe2000/k-dense-plugins/plugins/k-dense-science
/plugin install k-dense-science@k-dense-science-marketplace
```

Or manually in `~/.claude/settings.json`:

```json
{
  "enabledPlugins": {
    "k-dense-science@k-dense-science-marketplace": true
  },
  "extraKnownMarketplaces": {
    "k-dense-science-marketplace": {
      "source": {
        "source": "github",
        "repo": "dstroe2000/k-dense-plugins",
        "path": "plugins/k-dense-science"
      }
    }
  }
}
```

### Option 3: Local plugin (development)

```bash
claude --plugin-dir ./plugins/k-dense-science
```

## What's included

### Foundational (domain-agnostic)

| Domain | Skills | Examples |
|--------|--------|---------|
| Statistics & Math | 5 | statsmodels, pymc, sympy |
| Machine Learning | 15 | scikit-learn, pytorch-lightning, transformers, SHAP |
| Data Processing | 14 | polars, dask, vaex, matplotlib, seaborn |
| Scientific Writing | 14 | manuscript writing, peer review, posters, grants |
| Paper Search | 7 | paper-lookup, literature-review, parallel-web |
| Document Formats | 5 | pdf, docx, pptx, xlsx, markitdown |
| Thinking & Decision | 5 | what-if-oracle, consciousness-council |

### Applied (domain-specific)

| Domain | Skills | Examples |
|--------|--------|---------|
| Genomics & Single-Cell | 20 | scanpy, biopython, pysam, scvi-tools |
| Cheminformatics | 10 | rdkit, datamol, diffdock, molecular-dynamics |
| Lab Automation | 10 | pylabrobot, Benchling, Opentrons, protocols.io |
| Clinical & Healthcare | 10 | clinical reports, pydicom, pathml |
| Physics & Engineering | 11 | astropy, fluidsim, pymatgen, geopandas |
| Quantum Computing | 4 | qiskit, cirq, pennylane, qutip |
| Protein Engineering | 3 | ESM, glycoengineering, Adaptyv |
| Knowledge Graphs | 3 | PrimeKG, DepMap, US Fiscal Data |

## Architecture

```
k-dense-plugins/
├── upstream/                          ← git submodule → K-Dense fork
├── skill-map.json                     ← skill categorization (used by sync)
├── sync.sh                            ← pulls upstream, patches frontmatter
└── plugins/k-dense-science/
    ├── .claude-plugin/plugin.json
    └── skills/
        ├── science/                   ← gateway (visible to Claude)
        │   ├── SKILL.md               ← routes requests to correct skill
        │   └── routing-map.md         ← full decision tree for 134 skills
        ├── scanpy/SKILL.md            ← hidden (disable-model-invocation)
        ├── rdkit/SKILL.md             ← hidden
        └── ... 132 more hidden skills
```

**Key design**: Only `/science` is visible to Claude. All other skills have `disable-model-invocation: true` — they exist but Claude won't auto-trigger them. The gateway reads the routing map, picks the right skill, and invokes it by name.

## Updating from upstream

```bash
cd upstream && git pull origin main && cd ..
./sync.sh
```

The sync script copies skills from the upstream submodule, injects `disable-model-invocation: true`, and flags any new upstream skills not yet categorized.

## Credits

All skills created by **[K-Dense Inc.](https://github.com/K-Dense-AI)**. Plugin packaging and gateway routing by **[Daniel Stroe](https://github.com/dstroe2000)**.
