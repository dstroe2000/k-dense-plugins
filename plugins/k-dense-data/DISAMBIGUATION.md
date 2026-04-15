# Skill Disambiguation — Data & Visualization

## Large Data Processing (3 skills)

```
"My data is too big / too slow"
  │
  ├─ Fits in RAM but pandas is slow?
  │   └─ polars — fast in-memory, lazy eval, 1-100GB
  │
  ├─ Doesn't fit in RAM, single machine?
  │   └─ vaex — out-of-core, memory-mapped, billions of rows
  │
  └─ Need cluster / multi-machine?
      └─ dask — distributed, integrates with pandas/NumPy
```

| Skill | Data size | Infrastructure | API feel |
|-------|-----------|---------------|----------|
| polars | 1-100 GB | Single machine, in RAM | Own API (not pandas) |
| vaex | 10 GB-1 TB | Single machine, disk-backed | pandas-like |
| dask | Any size | Single or cluster | pandas-like |

**Rule of thumb**: Try polars first (fastest). If OOM, try vaex. If need distributed, use dask.

## Visualization (4 skills)

```
"I need a plot"
  │
  ├─ Full control, custom plot type?
  │   └─ matplotlib — low-level, any plot imaginable
  │
  ├─ Quick statistical exploration?
  │   └─ seaborn — box plots, violin, heatmaps, attractive defaults
  │
  ├─ Publication-ready figure with journal requirements?
  │   └─ scientific-visualization — multi-panel, Nature/Science style
  │
  └─ Technical diagram (not data plot)?
      └─ markdown-mermaid-writing — flowcharts, sequence diagrams
```

## Infrastructure (4 skills — NO OVERLAP)

| Skill | Use when |
|-------|----------|
| modal | Deploy to cloud GPUs, serverless |
| optimize-for-gpu | Accelerate local code with CUDA |
| get-available-resources | Check CPU/GPU/memory before heavy computation |
| simpy | Discrete-event simulation (queues, processes) |
