# Routing Map — All 134 Skills

## §1 Cheminformatics & Drug Discovery (10 skills)

```
"Work with molecules"
  ├─ Parse SMILES, descriptors, fingerprints (simple) → datamol
  ├─ Advanced molecular control, custom sanitization → rdkit
  ├─ Drug-likeness filtering (Lipinski, PAINS) → medchem
  ├─ Molecular featurization for ML → molfeat
  ├─ Full ML pipeline (QSAR, property prediction) → deepchem
  ├─ GNN architectures on molecules → torchdrug
  ├─ Protein-ligand docking → diffdock
  ├─ Cloud modeling (pKa, conformers, MD) → rowan
  ├─ Molecular dynamics simulation → molecular-dynamics
  └─ Drug discovery benchmark datasets → pytdc
```

**Default**: datamol. Drop to rdkit only when datamol's API doesn't expose what's needed.

## §2 Genomics & Single-Cell (20 skills)

### Single-Cell RNA-seq
```
  ├─ Data format / .h5ad files → anndata
  ├─ Standard pipeline (QC → clustering → markers) → scanpy
  ├─ RNA velocity / trajectory direction → scvelo
  ├─ Batch correction / probabilistic models → scvi-tools
  └─ Query reference atlas (61M+ cells) → cellxgene-census
```

### Bioinformatics Databases
```
  ├─ Quick lookup (gene info, BLAST, AlphaFold) → gget
  ├─ Multi-database Python workflow (UniProt+KEGG+ChEMBL) → bioservices
  └─ Broad search across 78 databases via REST → database-lookup (§8)
```
**Default**: gget for quick lookups. bioservices for scripted multi-DB workflows.

### Sequence & File Processing
```
  ├─ Sequence manipulation, FASTA/GenBank, BLAST → biopython
  ├─ SAM/BAM/CRAM/VCF I/O → pysam
  ├─ BAM → bigWig, ChIP-seq/ATAC-seq QC → deeptools
  ├─ Differential expression (bulk RNA-seq) → pydeseq2
  └─ FCS files (flow cytometry) → flowio
```

### Genomic Intervals
```
  ├─ BED/VCF overlaps on Polars DataFrames → polars-bio
  ├─ High-performance interval ops (Rust) → gtars
  └─ ML on genomic regions → geniml
```

### Phylogenetics & Evolution
```
  ├─ Full pipeline (alignment → tree → viz) → phylogenetics
  ├─ Tree manipulation, NCBI taxonomy → etetoolkit
  └─ Diversity metrics, ordination, PERMANOVA → scikit-bio
```

### Other Genomics
```
  ├─ Gene regulatory network inference → arboreto
  ├─ Scalable VCF storage and queries → tiledbvcf
  └─ Chunked N-D arrays for cloud storage → zarr-python (also §12)
```

## §3 Protein Engineering (3 skills)

```
  ├─ Protein language models (ESM3, ESM C) → esm
  ├─ Glycosylation analysis → glycoengineering
  └─ Adaptyv Bio Foundry API (physical experiments) → adaptyv
```
No overlap — design → modify → test pipeline.

## §4 Clinical & Healthcare (10 skills)

### Clinical Documents
```
  ├─ Case reports, diagnostic reports, trial reports → clinical-reports
  ├─ Patient cohort analysis, treatment recommendations → clinical-decision-support
  └─ 3-4 page treatment plans (SMART goals, LaTeX) → treatment-plans
```

### Medical Imaging
```
  ├─ Read/write DICOM files → pydicom
  ├─ Simple tile extraction from H&E slides → histolab
  ├─ Advanced computational pathology (multiplexed, ML) → pathml
  └─ Download public cancer imaging datasets → imaging-data-commons
```

### Other Clinical
```
  ├─ ML models on EHR data → pyhealth
  ├─ Medical device QMS documentation → iso-13485-certification
  └─ Survival / time-to-event analysis → scikit-survival
```

## §5 Statistics (3 skills)

```
  ├─ Don't know which test / guided selection → statistical-analysis
  ├─ Specific model (OLS, GLM, ARIMA, mixed effects) → statsmodels
  └─ Bayesian / priors / MCMC / hierarchical → pymc
```
**Default**: statistical-analysis (it guides test selection).

## §6 Machine Learning (15 skills)

```
  ├─ Classical ML (regression, classification, clustering) → scikit-learn
  ├─ Deep learning (custom neural nets) → pytorch-lightning
  ├─ Pretrained models (NLP, vision, audio) → transformers
  ├─ Graph neural networks → torch-geometric
  ├─ Explain model predictions → shap
  ├─ Dimensionality reduction → umap-learn
  ├─ Reinforcement learning (standard) → stable-baselines3
  ├─ Reinforcement learning (high-perf parallel) → pufferlib
  ├─ Time series classification/clustering → aeon
  ├─ Zero-shot time series forecasting → timesfm-forecasting
  ├─ Molecular ML → deepchem (also §1)
  ├─ Symbolic math, calculus, algebra → sympy
  └─ Multi-objective optimization → pymoo
```

## §7 Visualization (7 skills)

```
  ├─ Full control, custom plot type → matplotlib
  ├─ Quick statistical exploration → seaborn
  ├─ Publication-ready figures (Nature/Science style) → scientific-visualization
  ├─ Flowcharts, sequence diagrams (text-based) → markdown-mermaid-writing
  ├─ AI-generated scientific diagrams → scientific-schematics
  ├─ AI-generated photos, illustrations → generate-image
  └─ AI-generated infographics → infographics
```
**Rule**: matplotlib/seaborn for data plots. scientific-visualization for journal figures. Others for non-data visuals.

## §8 Paper Search & Research (7 skills)

```
  ├─ Quick lookup (DOI, title, abstract) → paper-lookup
  ├─ Structured experimental data from papers → bgpt-paper-search
  ├─ Auto-routed research search → research-lookup
  ├─ Broad web + academic search → parallel-web
  ├─ Full systematic review with synthesis → literature-review
  ├─ BibTeX / DOI validation / citation formatting → citation-management
  └─ Zotero library management → pyzotero
```
**Default**: research-lookup (auto-routes to best backend).
**Full review**: literature-review.
**Known paper/DOI**: paper-lookup.

## §9 Scientific Writing & Communication (14 skills)

### Writing
```
  ├─ Manuscript / paper (IMRAD) → scientific-writing
  ├─ Grant proposal (NSF/NIH/DOE/DARPA) → research-grants
  └─ Journal/conference formatting → venue-templates
```

### Reviewing
```
  ├─ Peer review (checklist, CONSORT/STROBE) → peer-review
  ├─ Scholarly work quality scoring → scholar-evaluation
  └─ Evidence quality / methodology assessment → scientific-critical-thinking
```

### Ideation
```
  ├─ Open brainstorming → scientific-brainstorming
  └─ Testable hypotheses from observations → hypothesis-generation
```

### Presentations
```
  ├─ Conference talk / slide deck → scientific-slides
  ├─ Research poster (LaTeX, default) → latex-posters
  └─ Research poster (PPTX format) → pptx-posters
```

### Open Notebook
```
  └─ AI-powered research notebook → open-notebook
  └─ Paperzilla recommendations → paperzilla
```

## §10 Document Formats (5 skills)

```
  ├─ .pdf → pdf
  ├─ .docx / Word → docx
  ├─ .pptx / PowerPoint → pptx
  ├─ .xlsx / .csv / .tsv → xlsx
  └─ Any format → Markdown → markitdown
```
Route by file extension. Unambiguous.

## §11 Thinking & Decision (5 skills)

```
  ├─ "What if..." / scenario analysis → what-if-oracle
  ├─ Multiple perspectives / council → consciousness-council
  ├─ Automated hypothesis testing on tabular data → hypogenic
  ├─ Analyze thinking/writing style → dhdna-profiler
  └─ Market/industry analysis report → market-research-reports
```

## §12 Data Processing & Infrastructure (14 skills)

### DataFrames by Size
```
  ├─ Fits in RAM, want speed → polars
  ├─ Exceeds RAM, single machine → vaex
  └─ Distributed / cluster → dask
```
**Default**: polars.

### Other Data
```
  ├─ Graph/network analysis → networkx
  ├─ Generic EDA on any file → exploratory-data-analysis
  ├─ Chunked N-D arrays (cloud storage) → zarr-python
```

### Infrastructure
```
  ├─ Cloud GPUs / serverless → modal
  ├─ CUDA acceleration for local code → optimize-for-gpu
  ├─ Check system resources before heavy work → get-available-resources
  └─ Discrete-event simulation → simpy
```

## §13 Lab Automation (10 skills)

### Lab Robots
```
  ├─ Multi-vendor automation → pylabrobot
  ├─ Opentrons-only protocols → opentrons-integration
  └─ Cloud autonomous lab → ginkgo-cloud-lab
```

### ELN & Data
```
  ├─ Benchling → benchling-integration
  ├─ LabArchives → labarchive-integration
  ├─ protocols.io → protocolsio-integration
  └─ LaminDB (data framework) → lamindb
```

### Genomics Platforms
```
  ├─ DNAnexus → dnanexus-integration
  └─ Latch → latchbio-integration
```

### Microscopy
```
  └─ OMERO image management → omero-integration
```

## §14 Quantum Computing (4 skills)

```
  ├─ IBM hardware → qiskit
  ├─ Google hardware → cirq
  ├─ Hardware-agnostic / quantum ML → pennylane
  └─ Quantum physics simulation (not circuits) → qutip
```

## §15 Physics & Engineering (11 skills)

```
  ├─ Astronomy → astropy
  ├─ Fluid dynamics → fluidsim
  ├─ MATLAB/Octave → matlab
  ├─ Materials science → pymatgen
  ├─ Metabolic modeling → cobrapy
  ├─ Remote sensing (satellite, spatial) → geomaster
  ├─ GIS vector data (shapefiles) → geopandas
  ├─ Neural recordings / spike sorting → neuropixels-analysis
  ├─ Biosignal processing (ECG/EEG) → neurokit2
  ├─ Mass spectra similarity → matchms
  └─ Proteomics LC-MS/MS → pyopenms
```
Minimal overlap — each is a distinct domain.

## §16 Knowledge Graphs (3 skills)

```
  ├─ Biomedical (genes, drugs, diseases) → primekg
  ├─ Cancer dependencies (CRISPR Chronos) → depmap
  └─ U.S. Treasury fiscal data → usfiscaldata
```
