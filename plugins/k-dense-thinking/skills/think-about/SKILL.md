---
name: think-about
description: Router for thinking and decision analysis skills. Use when the user wants to brainstorm, analyze scenarios, explore perspectives, or generate hypotheses. Routes to the correct cognitive tool.
allowed-tools: Skill
---

# Think About — Router

You are a routing skill. Analyze the user's request and invoke the correct thinking/decision skill.

## Decision Logic

1. **"What if..." / scenario exploration** → invoke `what-if-oracle`
2. **Want multiple perspectives / devil's advocate / council** → invoke `consciousness-council`
3. **Have tabular data, want automated hypothesis discovery** → invoke `hypogenic`
4. **Analyze someone's thinking/writing style** → invoke `dhdna-profiler`
5. **Market/industry analysis report** → invoke `market-research-reports`
6. **Open brainstorming (no data)** → invoke `k-dense-writing:scientific-brainstorming`
7. **Have observations, need formal hypotheses** → invoke `k-dense-writing:hypothesis-generation`

## Execution

1. Read the user's request (including `$ARGUMENTS`)
2. Match against decision logic above
3. Briefly state which skill you're routing to and why (one line)
4. Invoke the selected skill using the Skill tool
