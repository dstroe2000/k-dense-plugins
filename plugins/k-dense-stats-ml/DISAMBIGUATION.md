# Skill Disambiguation — Stats & ML

## Statistics (3 skills — MEDIUM OVERLAP)

```
"I need statistics"
  │
  ├─ Don't know which test to use?
  │   └─ statistical-analysis — guided selection, assumption checks, APA reporting
  │
  ├─ Know the model (OLS, GLM, ARIMA)?
  │   └─ statsmodels — specific model classes, diagnostics, coefficient tables
  │
  └─ Bayesian approach / prior beliefs?
      └─ pymc — MCMC, hierarchical models, posterior checks
```

| Skill | Use when | NOT for |
|-------|----------|---------|
| statistical-analysis | "Which test for my data?" | Implementing specific models |
| statsmodels | "Run a mixed-effects regression" | Test selection guidance |
| pymc | "Bayesian estimate with priors" | Frequentist tests |

## Machine Learning (11 skills)

### By Task Type

```
"I need ML"
  │
  ├─ Classical ML (regression, classification, clustering)?
  │   └─ scikit-learn
  │
  ├─ Deep learning (custom neural nets)?
  │   └─ pytorch-lightning
  │
  ├─ Pretrained models (NLP, vision, audio)?
  │   └─ transformers
  │
  ├─ Graph data (nodes, edges)?
  │   └─ torch-geometric
  │
  ├─ Explain model predictions?
  │   └─ shap
  │
  ├─ Dimensionality reduction / visualization?
  │   └─ umap-learn
  │
  ├─ Reinforcement learning?
  │   ├─ Standard algorithms → stable-baselines3
  │   └─ High-perf parallel → pufferlib
  │
  ├─ Time series?
  │   ├─ Classification/clustering → aeon
  │   └─ Zero-shot forecasting → timesfm-forecasting
  │
  └─ Molecular ML?
      └─ deepchem (also in k-dense-cheminformatics)
```

## Multi-Objective Optimization

| Skill | Use when |
|-------|----------|
| pymoo | NSGA-II/III, Pareto fronts, constraint handling |
| sympy | Symbolic math, algebraic solving, calculus |

No overlap — pymoo is numerical optimization, sympy is symbolic computation.
