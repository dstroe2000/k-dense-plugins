# K-Dense Scientific Skills — Claude Code Plugins

> **Based on [K-Dense-AI/scientific-agent-skills](https://github.com/K-Dense-AI/scientific-agent-skills)** by [K-Dense Inc.](https://github.com/K-Dense-AI). All 134 skills are their original work. This repo repackages them as modular Claude Code plugins — no skill content is modified.

## Why this repo?

The original repository bundles 134 scientific skills in a flat structure. Loading all of them into Claude Code wastes context on irrelevant domains. This repo splits them into **13 installable plugins** by domain, so you load only what you need.

## Plugins

### Foundational (domain-agnostic)

| Plugin | Skills | Description |
|--------|--------|-------------|
| `k-dense-stats-ml` | 15 | Statistics, ML, deep learning, RL, time series |
| `k-dense-data` | 14 | DataFrames, visualization, GPU, distributed computing |
| `k-dense-writing` | 14 | Scientific writing, peer review, posters, grants |
| `k-dense-search` | 15 | Paper search, web research, document formats, AI generation |
| `k-dense-thinking` | 5 | Decision analysis, brainstorming, cognitive tools |

### Applied (domain-specific)

| Plugin | Skills | Description |
|--------|--------|-------------|
| `k-dense-genomics` | 20 | Single-cell, sequencing, phylogenetics, bioinformatics |
| `k-dense-cheminformatics` | 10 | Molecular modeling, drug discovery, QSAR |
| `k-dense-protein` | 3 | Protein language models, glycoengineering |
| `k-dense-clinical` | 10 | Clinical reports, medical imaging, survival analysis |
| `k-dense-lab` | 10 | Lab automation, ELN, platform integrations |
| `k-dense-quantum` | 4 | IBM/Google/hardware-agnostic quantum frameworks |
| `k-dense-physics` | 11 | Astrophysics, fluids, materials, geospatial, neuroscience |
| `k-dense-knowledge` | 3 | Biomedical knowledge graphs, fiscal data |

## Installation

### Option 1: Clone and copy (simplest)

Install specific plugins by copying their skills:

```bash
git clone --recurse-submodules https://github.com/dstroe2000/k-dense-plugins.git
cp -r k-dense-plugins/plugins/k-dense-stats-ml/skills/* ~/.claude/skills/
cp -r k-dense-plugins/plugins/k-dense-genomics/skills/* ~/.claude/skills/
```

### Option 2: Plugin system

```
/plugin marketplace add dstroe2000/k-dense-plugins/plugins/k-dense-stats-ml
/plugin install k-dense-stats-ml@k-dense-stats-ml-marketplace
```

Or manually in `~/.claude/settings.json`:

```json
{
  "enabledPlugins": {
    "k-dense-stats-ml@k-dense-stats-ml-marketplace": true,
    "k-dense-genomics@k-dense-genomics-marketplace": true
  },
  "extraKnownMarketplaces": {
    "k-dense-stats-ml-marketplace": {
      "source": {
        "source": "github",
        "repo": "dstroe2000/k-dense-plugins",
        "path": "plugins/k-dense-stats-ml"
      }
    },
    "k-dense-genomics-marketplace": {
      "source": {
        "source": "github",
        "repo": "dstroe2000/k-dense-plugins",
        "path": "plugins/k-dense-genomics"
      }
    }
  }
}
```

### Option 3: Local plugin (development)

```bash
claude --plugin-dir ./plugins/k-dense-stats-ml --plugin-dir ./plugins/k-dense-genomics
```

## Updating from upstream

Skills are synced from the upstream submodule. To pull updates:

```bash
cd upstream
git pull origin main
cd ..
./sync.sh
```

The sync script reads `skill-map.json`, copies skills into plugin directories, and flags any new upstream skills not yet categorized.

## Typical setups

**Data scientist:**
```
k-dense-stats-ml + k-dense-data + k-dense-search
```

**Bioinformatician:**
```
k-dense-stats-ml + k-dense-data + k-dense-genomics + k-dense-search
```

**Medicinal chemist:**
```
k-dense-stats-ml + k-dense-cheminformatics + k-dense-protein + k-dense-writing
```

**Clinical researcher:**
```
k-dense-clinical + k-dense-writing + k-dense-search + k-dense-stats-ml
```

## Credits

All skills created by **[K-Dense Inc.](https://github.com/K-Dense-AI)**. This repo only provides plugin packaging and domain-based organization.
