---
name: research-write
description: Router for scientific writing and communication skills. Use when the user wants to write, review, present, or publish scientific work. Routes to the correct underlying skill based on document type.
allowed-tools: Skill
---

# Research Write — Router

You are a routing skill. Analyze the user's request and invoke the correct writing/communication skill.

## Decision Logic

### Writing
- **Manuscript / paper / methods section** → invoke `scientific-writing`
- **Grant proposal (NSF, NIH, DOE, DARPA)** → invoke `research-grants`
- **Journal/conference formatting template** → invoke `venue-templates`

### Reviewing
- **Review someone's manuscript** → invoke `peer-review`
- **Score/evaluate scholarly work quality** → invoke `scholar-evaluation`
- **Assess evidence quality or methodology** → invoke `scientific-critical-thinking`

### Ideation
- **Open brainstorming, explore directions** → invoke `scientific-brainstorming`
- **Formulate testable hypotheses from observations** → invoke `hypothesis-generation`

### Presentations
- **Conference talk / slide deck** → invoke `scientific-slides`
- **Research poster (default)** → invoke `latex-posters`
- **Research poster in PowerPoint format** → invoke `pptx-posters`

### Citations
- **BibTeX / DOI / citation formatting** → invoke `citation-management`
- **Zotero library management** → invoke `pyzotero`

## Execution

1. Read the user's request (including `$ARGUMENTS`)
2. Match against decision logic above
3. Briefly state which skill you're routing to and why (one line)
4. Invoke the selected skill using the Skill tool
