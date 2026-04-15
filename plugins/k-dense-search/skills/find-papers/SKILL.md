---
name: find-papers
description: Router for paper search skills. Use when the user wants to find, search, or look up academic papers, research articles, or scientific literature. Routes to the correct underlying skill based on intent.
allowed-tools: Skill
---

# Find Papers — Router

You are a routing skill. Analyze the user's request and invoke the correct paper search skill.

## Decision Logic

Evaluate the request against these criteria IN ORDER:

1. **User mentions Zotero or their existing library** → invoke `pyzotero`
2. **User needs BibTeX, DOI validation, or citation formatting** → invoke `citation-management`
3. **User wants a full systematic/literature review with synthesis** → invoke `literature-review`
4. **User wants structured experimental data from papers (methods, results, sample sizes)** → invoke `bgpt-paper-search`
5. **User wants broad web search that includes academic sources** → invoke `parallel-web`
6. **User wants a quick lookup (DOI, title, abstract, specific paper)** → invoke `paper-lookup`
7. **Default / unsure** → invoke `research-lookup` (auto-routes to best backend)

## Arguments

If the user passes arguments (e.g., `/find-papers CRISPR gene editing`), forward them as the search query to the selected skill.

## Execution

1. Read the user's request (including `$ARGUMENTS`)
2. Match against decision logic above
3. Briefly state which skill you're routing to and why (one line)
4. Invoke the selected skill using the Skill tool
