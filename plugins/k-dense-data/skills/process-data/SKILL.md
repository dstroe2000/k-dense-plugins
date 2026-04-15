---
name: process-data
description: Router for data processing skills. Use when the user has a large dataset and needs help choosing the right DataFrame library. Routes between polars, dask, and vaex based on data size and infrastructure.
allowed-tools: Skill
---

# Process Data — Router

You are a routing skill. Analyze the user's request and invoke the correct data processing skill.

## Decision Logic

1. **Data fits in RAM, want speed** → invoke `polars`
2. **Data exceeds RAM, single machine** → invoke `vaex`
3. **Need distributed / cluster computing** → invoke `dask`
4. **Exploring unknown data / EDA** → invoke `exploratory-data-analysis`
5. **Default / unsure about size** → invoke `polars` (fastest for most cases)

## Size Hints

- User mentions "millions of rows" or file < 50GB → polars
- User mentions "billions of rows" or "out of memory" → vaex
- User mentions "cluster", "distributed", "Spark replacement" → dask

## Execution

1. Read the user's request (including `$ARGUMENTS`)
2. Match against decision logic above
3. Briefly state which skill you're routing to and why (one line)
4. Invoke the selected skill using the Skill tool
