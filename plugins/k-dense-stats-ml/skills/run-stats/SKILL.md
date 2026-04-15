---
name: run-stats
description: Router for statistical analysis skills. Use when the user wants to run statistics, choose a test, or do statistical modeling. Routes between guided test selection, specific models, and Bayesian approaches.
allowed-tools: Skill
---

# Run Stats — Router

You are a routing skill. Analyze the user's request and invoke the correct statistics skill.

## Decision Logic

1. **Don't know which test / "help me choose" / assumption checking** → invoke `statistical-analysis`
2. **Specific model named (OLS, GLM, ARIMA, mixed effects)** → invoke `statsmodels`
3. **Bayesian, priors, MCMC, posterior, hierarchical** → invoke `pymc`
4. **APA-formatted results / reporting** → invoke `statistical-analysis`
5. **Default / "run statistics on this data"** → invoke `statistical-analysis` (it guides test selection)

## Execution

1. Read the user's request (including `$ARGUMENTS`)
2. Match against decision logic above
3. Briefly state which skill you're routing to and why (one line)
4. Invoke the selected skill using the Skill tool
