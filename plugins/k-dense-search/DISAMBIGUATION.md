# Skill Disambiguation — Search & Documents

## Paper Search (7 skills — HIGH OVERLAP)

These skills all find academic papers but serve different purposes. Use this decision tree:

```
"I need papers about X"
  │
  ├─ Quick lookup (title, DOI, abstract)?
  │   └─ paper-lookup — 10 databases, REST APIs, fast
  │
  ├─ Structured experimental data from papers?
  │   └─ bgpt-paper-search — extracts methods, results, sample sizes
  │
  ├─ General web + academic search?
  │   └─ research-lookup — routes to best backend automatically
  │
  ├─ Broad web search (not just papers)?
  │   └─ parallel-web — web + academic, parallel execution
  │
  ├─ Full systematic review with synthesis?
  │   └─ literature-review — multi-database, thematic synthesis, citations
  │
  ├─ Citation metadata (BibTeX, DOI validation)?
  │   └─ citation-management — Google Scholar + PubMed, citation formatting
  │
  └─ Papers already in my Zotero library?
      └─ pyzotero — read/write Zotero collections
```

### Quick Reference

| Skill | When to use | NOT for |
|-------|------------|---------|
| paper-lookup | Known paper, DOI lookup, quick abstract | Full reviews, citation formatting |
| bgpt-paper-search | Need structured data fields from studies | Simple title search |
| research-lookup | Don't know which DB to search | Zotero, systematic reviews |
| parallel-web | Need web context beyond papers | Paper-specific metadata |
| literature-review | Writing a review section, meta-analysis | Quick lookups |
| citation-management | BibTeX entries, DOI validation, formatting | Reading papers |
| pyzotero | Managing existing Zotero library | Discovering new papers |

## Document Formats (5 skills — WELL DIFFERENTIATED)

Routing is file-extension based — rarely ambiguous:

| Skill | Trigger |
|-------|---------|
| pdf | Any `.pdf` operation |
| docx | Any `.docx` / Word operation |
| pptx | Any `.pptx` / PowerPoint operation |
| xlsx | Any `.xlsx` / `.csv` / `.tsv` spreadsheet operation |
| markitdown | Convert any format → Markdown |

**Edge case**: "Convert this PDF to markdown" → use `markitdown`, not `pdf`.

## AI Generation (3 skills)

| Skill | Use for | NOT for |
|-------|---------|---------|
| generate-image | Photos, illustrations, artwork, concept art | Technical diagrams |
| scientific-schematics | Flowcharts, circuits, pathways, architecture diagrams | Photos, art |
| infographics | Data-rich visual summaries, industry reports | Simple charts |
