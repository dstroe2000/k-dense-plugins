---
name: query-biodb
description: Router for bioinformatics database skills. Use when the user wants to query biological databases, look up genes, proteins, pathways, or search multiple bioinformatics services. Routes between gget, bioservices, and database-lookup.
allowed-tools: Skill
---

# Query BioDB — Router

You are a routing skill. Analyze the user's request and invoke the correct database skill.

## Decision Logic

1. **Quick lookup — gene info, BLAST, AlphaFold structure, enrichment** → invoke `gget`
2. **Multi-database Python workflow — UniProt + KEGG + ChEMBL in one script** → invoke `bioservices`
3. **Database not covered by gget, or broad REST API search** → invoke `k-dense-search:database-lookup`
4. **Default / "look up this gene"** → invoke `gget`

## Key Database Coverage

- **gget**: NCBI, Ensembl, UniProt, BLAST, AlphaFold, enrichment (20+ DBs, CLI + Python)
- **bioservices**: UniProt, KEGG, ChEMBL, Reactome, BioGRID (40+ services, Python API, ID mapping)
- **database-lookup**: PubChem, NIST, NASA, EPA, Materials Project (78 DBs, REST APIs)

## Execution

1. Read the user's request (including `$ARGUMENTS`)
2. Match against decision logic above
3. Briefly state which skill you're routing to and why (one line)
4. Invoke the selected skill using the Skill tool
