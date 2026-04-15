# Skill Disambiguation — Genomics

## Single-Cell RNA-seq (5 skills — WELL DIFFERENTIATED)

```
"I'm working with single-cell data"
  │
  ├─ Data format / .h5ad files?
  │   └─ anndata — data structure, I/O, slicing
  │
  ├─ Standard analysis pipeline (QC → clustering → markers)?
  │   └─ scanpy — the default choice
  │
  ├─ RNA velocity / cell trajectory direction?
  │   └─ scvelo — unspliced/spliced mRNA dynamics
  │
  ├─ Batch correction / probabilistic models?
  │   └─ scvi-tools — deep generative, multi-modal
  │
  └─ Query large reference atlas (61M+ cells)?
      └─ cellxgene-census — population-scale queries
```

## Bioinformatics Database Access (3 skills — LOW DIFFERENTIATION)

```
"Query a bioinformatics database"
  │
  ├─ Quick interactive lookup (gene info, BLAST, AlphaFold)?
  │   └─ gget — fast CLI/Python, 20+ DBs
  │
  ├─ Multi-database workflow in Python (UniProt + KEGG + ChEMBL)?
  │   └─ bioservices — unified API, 40+ services, ID mapping
  │
  └─ Broad search across 78 databases via REST?
      └─ database-lookup (in k-dense-search plugin)
```

**Rule of thumb**: Start with `gget` for quick lookups. Use `bioservices` when chaining multiple databases in a script. Use `database-lookup` for databases gget doesn't cover.

## Genomic Intervals (3 skills)

| Skill | Use when |
|-------|----------|
| polars-bio | BED/VCF overlaps on Polars DataFrames |
| gtars | Performance-critical interval ops (Rust) |
| geniml | ML on genomic regions (embeddings, classification) |

## Phylogenetics (3 skills)

| Skill | Use when |
|-------|----------|
| phylogenetics | Full pipeline: alignment → tree building → visualization |
| etetoolkit | Tree manipulation, visualization, NCBI taxonomy |
| scikit-bio | Diversity metrics (alpha/beta), ordination, PERMANOVA |

**Overlap**: tree handling. `phylogenetics` builds trees, `etetoolkit` manipulates them, `scikit-bio` computes diversity from them.

## Sequence & File Processing

| Skill | Focus |
|-------|-------|
| biopython | Sequence manipulation, FASTA/GenBank parsing, BLAST |
| pysam | SAM/BAM/CRAM/VCF I/O, alignment processing |
| deeptools | BAM → bigWig, ChIP-seq/ATAC-seq QC and visualization |
| flowio | FCS files (flow cytometry) |

No overlap — each handles different file formats.
