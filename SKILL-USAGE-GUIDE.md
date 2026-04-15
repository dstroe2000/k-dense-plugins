# Skill Usage Guide — 134 Skills, 400+ Use Cases

Every use case below works as a `/science` prompt:
```
/science <use case text>
```

## Stats & ML (15 skills)

| # | Skill | Use Case 1 | Use Case 2 | Use Case 3 |
|---|-------|------------|------------|------------|
| 1 | statistical-analysis | Run a two-way ANOVA on my experiment data with post-hoc tests | What statistical test should I use for paired ordinal data? | Perform power analysis for a clinical trial with 3 treatment arms |
| 2 | statsmodels | Fit a mixed-effects model for repeated measures in patient outcomes | Run ARIMA forecasting on monthly revenue data from sales.csv | Build an OLS regression with diagnostics and residual plots |
| 3 | pymc | Fit a Bayesian hierarchical model for multi-site clinical trial data | Compare two models using LOO cross-validation on my dataset | Run MCMC inference with posterior predictive checks on survey responses |
| 4 | sympy | Solve this system of differential equations symbolically | Compute the Jacobian matrix for this nonlinear dynamics system | Simplify and integrate this physics expression for kinetic energy |
| 5 | pymoo | Optimize beam design minimizing weight and deflection with stress constraints | Run NSGA-II on this multi-objective portfolio allocation problem | Plot the Pareto front for cost vs. performance tradeoffs |
| 6 | scikit-learn | Train a random forest classifier on patient biomarker data | Cluster customer segments using K-means with silhouette analysis | Build a pipeline with scaling, PCA, and SVM with grid search |
| 7 | pytorch-lightning | Train a ResNet image classifier with multi-GPU and early stopping | Set up distributed training with DeepSpeed for my language model | Build a LightningModule for time series with custom logging |
| 8 | transformers | Fine-tune BERT for sentiment classification on my review dataset | Run zero-shot text classification on product descriptions | Extract named entities from biomedical abstracts using BioBERT |
| 9 | torch-geometric | Build a GCN for node classification on a citation network | Predict protein-protein interactions using a link prediction GNN | Classify molecular graphs for toxicity prediction with GIN |
| 10 | shap | Explain my XGBoost model predictions with SHAP waterfall plots | Generate beeswarm plots showing feature importance for loan defaults | Debug why my model predicts high risk for this patient |
| 11 | umap-learn | Visualize single-cell RNA-seq clusters in 2D with UMAP | Reduce 500 features to 3D embedding for interactive exploration | Run UMAP + HDBSCAN clustering on my customer behavior data |
| 12 | stable-baselines3 | Train a PPO agent to play CartPole in Gymnasium | Compare SAC vs TD3 performance on a continuous control task | Train a DQN agent for inventory management simulation |
| 13 | pufferlib | Train a parallel RL agent on Atari Breakout with PufferLib | Benchmark PPO speedups across Procgen environments | Set up high-throughput RL training for NetHack |
| 14 | aeon | Classify ECG time series using a temporal CNN | Detect anomalies in industrial sensor data streams | Cluster stock price time series by similarity patterns |
| 15 | timesfm-forecasting | Forecast next 30 days of retail sales with zero-shot TimesFM | Predict energy consumption from smart meter readings | Generate weather temperature forecasts from historical sensor data |

## Data Processing & Infrastructure (14 skills)

| # | Skill | Use Case 1 | Use Case 2 | Use Case 3 |
|---|-------|------------|------------|------------|
| 16 | polars | Load a 20GB CSV and compute grouped aggregations with lazy evaluation | Build an ETL pipeline joining three tables with window functions | Compare Polars vs pandas performance on my dataset |
| 17 | dask | Process a 200GB parquet dataset that won't fit in memory | Parallelize pandas groupby across a Dask cluster | Run distributed NumPy matrix operations on large arrays |
| 18 | vaex | Explore a billion-row dataset interactively on my laptop | Compute statistics on memory-mapped HDF5 files without loading | Filter and visualize large astronomical survey catalogs |
| 19 | networkx | Find shortest paths in a transportation network graph | Detect communities in a social network using Louvain | Calculate betweenness centrality for a protein interaction network |
| 20 | exploratory-data-analysis | Run full EDA on my clinical trial dataset with quality checks | Profile this genomics CSV — distributions, missing values, correlations | Explore this environmental sensor dataset and flag anomalies |
| 21 | zarr-python | Store a 3D microscopy volume as chunked compressed Zarr arrays | Read a Zarr dataset from S3 with parallel I/O | Convert NetCDF climate data to Zarr for cloud analysis |
| 22 | matplotlib | Create a multi-panel figure with shared axes and custom colorbars | Plot a 3D surface of potential energy with contour projections | Export a high-resolution PDF figure for journal submission |
| 23 | seaborn | Make violin plots comparing gene expression across treatment groups | Create a clustermap heatmap of sample correlations | Plot pairwise feature distributions colored by diagnosis |
| 24 | scientific-visualization | Create a Nature-style multi-panel figure with significance brackets | Build a publication-ready survival curve with risk table | Design a 4-panel results figure matching Science formatting |
| 25 | markdown-mermaid-writing | Draw a Mermaid flowchart of my experimental pipeline | Create a sequence diagram for API data collection workflow | Generate a Gantt chart for my research project timeline |
| 26 | modal | Deploy a GPU inference endpoint for my model on Modal | Run a batch image processing job serverlessly in the cloud | Set up a scheduled daily data pipeline on Modal |
| 27 | optimize-for-gpu | Accelerate my pandas pipeline using cuDF on GPU | Port this NumPy simulation to CuPy for CUDA acceleration | Use Numba JIT to speed up my Monte Carlo loop on GPU |
| 28 | get-available-resources | Check available GPU memory before loading my large model | What CPU and RAM do I have for this computation? | Recommend resource settings for processing 50GB of data |
| 29 | simpy | Simulate a hospital emergency department queuing system | Model a manufacturing assembly line with resource constraints | Simulate logistics warehouse order picking with variable demand |

## Scientific Writing & Communication (14 skills)

| # | Skill | Use Case 1 | Use Case 2 | Use Case 3 |
|---|-------|------------|------------|------------|
| 30 | scientific-writing | Write the Methods section for my randomized controlled trial | Draft an abstract for my proteomics paper in IMRAD format | Format my results section with APA citations and figure references |
| 31 | scientific-brainstorming | Generate novel research directions at the intersection of AI and ecology | Brainstorm experiments to test my membrane transport hypothesis | Identify unexplored research gaps in gut-brain axis studies |
| 32 | scientific-critical-thinking | Evaluate the evidence quality of this meta-analysis using GRADE | Identify potential biases in this observational study design | Assess risk of bias in these five clinical trial papers |
| 33 | hypothesis-generation | Formulate testable hypotheses for CRISPR off-target effects in neurons | Generate competing hypotheses for the observed treatment response | Design predictions and falsification criteria for my enzyme model |
| 34 | peer-review | Review this manuscript using CONSORT checklist for clinical trials | Provide structured feedback on this methods section | Check this observational study against STROBE guidelines |
| 35 | scholar-evaluation | Score this grant proposal using ScholarEval quantitative framework | Evaluate candidate research portfolio for tenure review | Assess the rigor and impact of this submitted manuscript |
| 36 | literature-review | Conduct a systematic review on CAR-T therapy in solid tumors | Perform a meta-analysis of exercise interventions for depression | Search PubMed and Scopus for CRISPR delivery methods since 2020 |
| 37 | citation-management | Find the DOI and BibTeX for Smith et al. 2023 on neural scaling | Search Google Scholar for recent papers on quantum error correction | Format these 20 references in Vancouver citation style |
| 38 | pyzotero | Pull all items from my Zotero collection tagged "review" | Add these 10 papers to my Zotero library with proper metadata | Export my Zotero bibliography as BibTeX for my LaTeX paper |
| 39 | venue-templates | Generate a LaTeX manuscript template for Nature submission | Set up an IEEE two-column conference paper template | Create a NeurIPS 2024 submission template with supplementary |
| 40 | research-grants | Draft an NSF CAREER proposal with broader impacts section | Write a specific aims page for an NIH R01 grant | Create a budget justification for a DOE research proposal |
| 41 | latex-posters | Create an A0 research poster using beamerposter for my conference | Design a tikzposter with results figures and QR code | Build a landscape poster for my genomics project with baposter |
| 42 | pptx-posters | Create a 48x36 inch research poster as PDF from my data | Design an HTML/CSS poster with my lab's branding | Convert my results into a visual research poster for PPTX |
| 43 | scientific-slides | Create slides for my 15-minute conference talk on drug discovery | Build a thesis defense presentation with 30 slides | Design a seminar talk on machine learning in climate science |

## Paper Search & Documents (15 skills)

| # | Skill | Use Case 1 | Use Case 2 | Use Case 3 |
|---|-------|------------|------------|------------|
| 44 | paper-lookup | Find the original CRISPR-Cas9 paper by Doudna and Charpentier | Search for papers on transformer architectures in drug discovery | Look up PMID 35165275 and get the full abstract |
| 45 | bgpt-paper-search | Extract methods and sample sizes from CAR-T clinical trials | Find experimental binding affinity data for PD-1 inhibitors | Get quality-scored results data from mRNA vaccine studies |
| 46 | research-lookup | Search for recent advances in solid-state battery electrolytes | Find papers comparing single-cell sequencing technologies | What are the latest findings on GLP-1 agonists and neurodegeneration? |
| 47 | parallel-web | Generate a deep research report on quantum computing applications | Search and summarize recent FDA drug approvals for 2025 | Fetch and enrich data from these 10 research URLs |
| 48 | database-lookup | Look up aspirin in PubChem and ChEMBL for activity data | Query NIST for thermodynamic properties of methane | Search EPA for water quality data in the Great Lakes region |
| 49 | paperzilla | What canonical papers should I read on graph neural networks? | Recommend papers related to my protein folding project | Chat about the key findings in my Paperzilla collection |
| 50 | open-notebook | Ingest these 5 PDFs and summarize key methods across them | Add this YouTube lecture to my research notebook | Create a research notebook from these papers and web sources |
| 51 | pdf | Extract all tables from this clinical trial PDF report | Merge my 4 chapter PDFs into one thesis document | Split pages 10-25 from this textbook PDF for my notes |
| 52 | docx | Create a Word document with TOC and APA-formatted headings | Read and edit the methods section of my manuscript.docx | Generate a lab report template with letterhead and page numbers |
| 53 | pptx | Create a 10-slide PowerPoint from my experiment results | Read slides from this conference PPTX and summarize content | Add animation to the figures in my presentation |
| 54 | xlsx | Clean and reformat this messy CSV into a proper spreadsheet | Create an Excel file with formulas for dose-response calculations | Open this .xlsx and generate summary charts from the data |
| 55 | markitdown | Convert this PDF paper to Markdown for annotation | Transform my PPTX slides into Markdown for version control | Convert this DOCX protocol to Markdown format |
| 56 | generate-image | Generate a photorealistic illustration of a neuron synapse | Create a conceptual diagram of CRISPR gene editing mechanism | Generate an artistic cover image for my research paper |
| 57 | scientific-schematics | Draw a neural network architecture diagram for my CNN model | Create a biological pathway diagram for TGF-beta signaling | Generate a system diagram of my microfluidics experimental setup |
| 58 | infographics | Create an infographic summarizing my clinical trial results | Design a data visualization poster for patient outcomes | Generate a pharma-style infographic of drug mechanism of action |

## Thinking & Decision (5 skills)

| # | Skill | Use Case 1 | Use Case 2 | Use Case 3 |
|---|-------|------------|------------|------------|
| 59 | consciousness-council | Deliberate on whether to pivot my research direction to AI safety | Get multiple perspectives on the ethics of gene therapy in embryos | Explore tradeoffs between publishing speed and thoroughness |
| 60 | what-if-oracle | What if we increased sample size 5x but reduced follow-up time? | Explore scenarios if our drug fails Phase II trials | What if CRISPR off-target rates drop to near zero by 2030? |
| 61 | dhdna-profiler | Analyze my writing style across these five published papers | Extract my cognitive patterns from my lab notebook entries | Profile my thinking fingerprint from my grant proposals |
| 62 | market-research-reports | Generate a McKinsey-style report on the mRNA therapeutics market | Create a 50-page market analysis of wearable biosensors | Produce a BCG-style competitive landscape for cell therapy |
| 63 | hypogenic | Generate hypotheses explaining survival differences in this patient table | Test candidate hypotheses on my gene expression tabular data | Discover patterns in my drug response dataset using LLM reasoning |

## Genomics & Single-Cell (20 skills)

| # | Skill | Use Case 1 | Use Case 2 | Use Case 3 |
|---|-------|------------|------------|------------|
| 64 | anndata | Load and inspect this .h5ad single-cell dataset | Merge two AnnData objects from different experiments | Subset AnnData to T cells and export for downstream analysis |
| 65 | scanpy | Run full scRNA-seq QC, clustering, and DE on my 10X data | Generate UMAP visualization colored by cell type annotations | Perform Leiden clustering and rank marker genes per cluster |
| 66 | scvelo | Compute RNA velocity and visualize cell state transitions | Estimate latent time trajectory from spliced/unspliced counts | Plot velocity streamlines on my UMAP embedding |
| 67 | scvi-tools | Run scVI for batch correction across 5 patient samples | Train TOTALVI for joint RNA and protein analysis | Quantify uncertainty in cell type classification with scANVI |
| 68 | cellxgene-census | Query lung tissue expression data for 100K cells from Census | Compare macrophage gene signatures across disease conditions | Download pancreas cell atlas data filtered by cell type |
| 69 | pysam | Calculate read depth coverage across chromosome 17 from my BAM | Extract all variants in BRCA1 region from this VCF file | Filter BAM alignments by mapping quality and proper pairing |
| 70 | pydeseq2 | Run differential expression between treated and control RNA-seq samples | Generate volcano and MA plots from my bulk RNA-seq counts | Test for DE genes with FDR < 0.05 adjusting for batch |
| 71 | deeptools | Generate a correlation heatmap from my ChIP-seq BAM files | Create a PCA plot comparing ATAC-seq sample fingerprints | Convert BAM to bigWig and plot signal around TSS sites |
| 72 | tiledbvcf | Ingest 500 VCF files into a TileDB-VCF datastore | Query variants in chr1:1000000-2000000 across all samples | Incrementally add new cohort VCFs to existing population dataset |
| 73 | polars-bio | Find overlapping intervals between my BED and VCF files | Compute nearest gene for each ATAC-seq peak using Polars | Merge overlapping genomic regions from multiple BED files |
| 74 | gtars | Calculate coverage over genomic intervals at high speed | Tokenize genomic regions for input to my ML model | Compute interval overlaps on 10M regions using Rust backend |
| 75 | geniml | Train Region2Vec embeddings on my BED file collection | Embed scATAC-seq data using scEmbed for clustering | Build a BEDspace model for genomic region search |
| 76 | arboreto | Infer a gene regulatory network using GRNBoost2 on my scRNA-seq | Run GENIE3 to identify transcription factor targets | Build regulatory networks from time-course expression data |
| 77 | biopython | Parse this GenBank file and extract coding sequences | Run a remote BLAST search for my protein sequence | Read a PDB structure file and analyze residue contacts |
| 78 | gget | Get gene info and GO annotations for TP53 | Fetch the AlphaFold predicted structure for human insulin | Run enrichment analysis on my list of upregulated genes |
| 79 | bioservices | Map my gene IDs from Ensembl to UniProt using bioservices | Query KEGG pathways involving my hit genes | Retrieve Reactome pathway data for my protein list |
| 80 | scikit-bio | Calculate Shannon diversity and Chao1 for my microbiome samples | Run PERMANOVA on Bray-Curtis distances between treatment groups | Perform PCoA ordination on UniFrac distance matrix |
| 81 | flowio | Parse this FCS file and extract fluorescence channel data | Read flow cytometry metadata and compensation matrix | Convert FCS events to NumPy arrays for custom gating |
| 82 | phylogenetics | Build a maximum likelihood tree from aligned FASTA sequences | Run MAFFT alignment then IQ-TREE on my gene family | Visualize my phylogenetic tree with bootstrap values using ETE3 |
| 83 | etetoolkit | Annotate my Newick tree with NCBI taxonomy information | Detect gene duplication events in my species tree | Render a publication-quality phylogenetic tree as PDF |

## Cheminformatics & Drug Discovery (10 skills)

| # | Skill | Use Case 1 | Use Case 2 | Use Case 3 |
|---|-------|------------|------------|------------|
| 84 | rdkit | Calculate molecular descriptors and fingerprints for this SMILES list | Perform substructure search for kinase inhibitor scaffolds | Generate 3D conformers and minimize energy for this molecule |
| 85 | datamol | Standardize and cluster 10K molecules by Tanimoto similarity | Generate molecular conformers using datamol's simple API | Clean and preprocess my SDF file for QSAR modeling |
| 86 | medchem | Check my lead compounds against Lipinski and PAINS filters | Flag structural alerts in this drug candidate library | Score drug-likeness and synthetic accessibility for my hits |
| 87 | molfeat | Compute ECFP4 fingerprints for my compound library for QSAR | Generate ChemBERTa embeddings for molecular property prediction | Compare featurization methods for my solubility prediction task |
| 88 | diffdock | Dock this ligand into my protein target with DiffDock | Predict binding poses for 5 drug candidates against CDK2 | Score confidence of docking results for my virtual screen hits |
| 89 | torchdrug | Train a GNN for molecular property prediction on MoleculeNet | Run retrosynthesis prediction for my target molecule | Build a knowledge graph embedding model for drug-target interactions |
| 90 | pytdc | Download ADME benchmark datasets with scaffold splits | Get Tox21 toxicity data for model training and evaluation | Load drug-target interaction datasets from TDC for DTI modeling |
| 91 | rowan | Predict pKa values for my lead compound series | Run cloud docking of 100 ligands against my protein target | Calculate molecular descriptors and conformer energies via Rowan |
| 92 | molecular-dynamics | Run a 10ns MD simulation of my protein-ligand complex in OpenMM | Analyze RMSD and RMSF from my molecular dynamics trajectory | Calculate hydrogen bond contacts over my MD simulation frames |
| 93 | deepchem | Train a graph convolution model for aqueous solubility prediction | Benchmark molecular featurizers on MoleculeNet datasets | Use a pre-trained model to predict drug toxicity from SMILES |

## Protein Engineering (3 skills)

| # | Skill | Use Case 1 | Use Case 2 | Use Case 3 |
|---|-------|------------|------------|------------|
| 94 | esm | Generate ESM C embeddings for my protein sequence library | Design novel protein sequences with ESM3 generative model | Predict structure and function for this uncharacterized protein |
| 95 | glycoengineering | Identify N-glycosylation sequons in my antibody sequence | Analyze O-glycosylation potential in my mucin-domain protein | Engineer glycosylation sites to improve therapeutic half-life |
| 96 | adaptyv | Submit a binding assay for my designed antibody variants | Order BLI measurements for my protein-protein interaction panel | Run thermostability screening on my engineered enzyme library |

## Clinical & Healthcare (10 skills)

| # | Skill | Use Case 1 | Use Case 2 | Use Case 3 |
|---|-------|------------|------------|------------|
| 97 | clinical-reports | Write a CARE-compliant case report for this rare disease patient | Draft an ICH-E3 clinical trial report from our Phase II data | Generate a discharge summary from these patient notes |
| 98 | clinical-decision-support | Analyze outcomes for EGFR-mutant lung cancer patient cohort | Recommend treatment based on this patient's biomarker profile | Stratify patients by risk score using GRADE evidence levels |
| 99 | treatment-plans | Create a SMART-goal treatment plan for Type 2 diabetes management | Design a rehabilitation plan for post-ACL surgery recovery | Draft a mental health treatment plan for treatment-resistant depression |
| 100 | pyhealth | Build a mortality prediction model from ICU EHR records | Predict 30-day hospital readmission using patient encounter data | Map diagnosis codes using ICD-10 for my cohort study |
| 101 | iso-13485-certification | Perform gap analysis for our medical device QMS against ISO 13485 | Generate a Quality Manual template for our diagnostic device | Create SOPs for design control and CAPA processes |
| 102 | pydicom | Read and display this chest CT DICOM series | Anonymize patient information in 500 DICOM files for sharing | Extract pixel arrays from MRI DICOM for deep learning input |
| 103 | histolab | Extract tissue tiles from this whole slide H&E image | Perform stain normalization on my histology image set | Detect and filter background tiles from WSI for training |
| 104 | pathml | Segment nuclei in my multiplexed immunofluorescence images | Build tissue graphs from H&E slides for GNN classification | Preprocess whole slide images for computational pathology pipeline |
| 105 | imaging-data-commons | Download lung CT scans from NCI Imaging Data Commons | Query available PET/CT datasets for lymphoma studies | Access digital pathology images for breast cancer research |
| 106 | scikit-survival | Fit a Cox proportional hazards model to my clinical trial data | Train a Random Survival Forest for cancer prognosis prediction | Plot Kaplan-Meier curves comparing treatment vs control arms |

## Lab Automation (10 skills)

| # | Skill | Use Case 1 | Use Case 2 | Use Case 3 |
|---|-------|------------|------------|------------|
| 107 | benchling-integration | Search Benchling registry for all CRISPR guide RNA entries | Create a DNA sequence entry with annotations in Benchling | Query Benchling Data Warehouse for my experiment results |
| 108 | dnanexus-integration | Build and run a FASTQ alignment applet on DNAnexus | Upload VCF files and launch a variant calling pipeline | Process BAM files through a custom genomics workflow on DNAnexus |
| 109 | latchbio-integration | Create a Latch SDK workflow for my RNA-seq analysis | Run my Snakemake pipeline on Latch with @task decorators | Deploy a Nextflow pipeline for variant calling on LatchBio |
| 110 | omero-integration | Upload confocal microscopy images to my OMERO server | Draw ROIs and add annotations on my fluorescence dataset | Batch export Z-stack images from OMERO as TIFFs |
| 111 | opentrons-integration | Write an OT-2 protocol for serial dilution in a 96-well plate | Create a Flex robot protocol for DNA normalization | Program a cherry-picking protocol for hit validation plates |
| 112 | protocolsio-integration | Search protocols.io for ELISA protocols in immunology | Create and publish my Western blot protocol with step timers | Add materials and reagent lists to my published protocol |
| 113 | labarchive-integration | Create a new ELN entry with today's experiment notes | Attach analysis files to my LabArchives notebook page | Back up my entire LabArchives notebook for archival |
| 114 | ginkgo-cloud-lab | Submit a cell-free protein expression experiment to Ginkgo | Run autonomous RAC execution for my enzyme variants | Express and test 20 protein designs via Cloud Lab |
| 115 | pylabrobot | Program a Hamilton liquid handler for compound transfer | Set up a Tecan plate reader assay measurement protocol | Automate serial dilution across Hamilton and Opentrons systems |
| 116 | lamindb | Track data lineage for my scRNA-seq analysis pipeline | Register and query biological datasets with FAIR metadata | Organize experiment outputs with LaminDB queryable framework |

## Quantum Computing (4 skills)

| # | Skill | Use Case 1 | Use Case 2 | Use Case 3 |
|---|-------|------------|------------|------------|
| 117 | qiskit | Build and run a VQE circuit for H2 energy estimation | Simulate a 5-qubit GHZ state with error mitigation | Submit a parameterized circuit to IBM Quantum hardware |
| 118 | cirq | Design a noise-aware quantum circuit for Google Sycamore | Run quantum process tomography on a two-qubit gate | Characterize crosstalk errors in my superconducting qubit layout |
| 119 | pennylane | Train a variational quantum classifier on the Iris dataset | Implement QAOA for max-cut optimization on a graph | Build a quantum neural network with automatic differentiation |
| 120 | qutip | Simulate Jaynes-Cummings cavity QED dynamics | Solve the Lindblad master equation for a driven qubit | Model decoherence in a two-level quantum system |

## Physics & Engineering (11 skills)

| # | Skill | Use Case 1 | Use Case 2 | Use Case 3 |
|---|-------|------------|------------|------------|
| 121 | astropy | Convert celestial coordinates between ICRS and Galactic frames | Read and analyze this FITS image of a galaxy cluster | Calculate cosmological distances for my redshift catalog |
| 122 | fluidsim | Simulate 2D Navier-Stokes turbulence with pseudospectral methods | Model shallow water equations for tidal flow simulation | Run a stratified flow simulation to study internal waves |
| 123 | matlab | Solve this coupled ODE system using ode45 in Octave | Apply a bandpass filter to my vibration signal data | Perform image segmentation on microscopy images in MATLAB |
| 124 | pymatgen | Parse this CIF file and visualize the crystal structure | Generate a phase diagram for the Li-Fe-P-O system | Calculate electronic band structure from Materials Project data |
| 125 | cobrapy | Run flux balance analysis on E. coli metabolic model iML1515 | Simulate single gene knockouts and predict growth phenotypes | Perform flux variability analysis on my SBML metabolic model |
| 126 | geomaster | Analyze Sentinel-2 NDVI time series for crop health monitoring | Process SAR imagery for flood extent mapping | Classify land cover from Landsat multispectral satellite imagery |
| 127 | geopandas | Create a choropleth map of COVID incidence by county | Perform spatial join between hospital locations and census tracts | Overlay flood zones with building footprints from shapefiles |
| 128 | neuropixels-analysis | Sort spikes from my Neuropixels recording with Kilosort4 | Compute quality metrics for my sorted neural units | Analyze firing rates across brain regions from SpikeGLX data |
| 129 | neurokit2 | Process and analyze R-peaks from my ECG recording | Extract EDA features for my stress response experiment | Compute heart rate variability metrics from PPG sensor data |
| 130 | matchms | Score spectral similarity between my unknown and reference spectra | Identify compounds by matching MS/MS spectra to a library | Cluster mass spectra by cosine similarity for metabolomics |
| 131 | pyopenms | Detect features in my LC-MS/MS proteomics raw data | Identify peptides from tandem mass spectra in my experiment | Quantify proteins across samples using label-free quantification |

## Knowledge Graphs & Databases (3 skills)

| # | Skill | Use Case 1 | Use Case 2 | Use Case 3 |
|---|-------|------------|------------|------------|
| 132 | primekg | Query gene-disease associations for Alzheimer's drug targets | Explore drug-protein interactions in the PrimeKG knowledge graph | Find phenotype-gene links for rare metabolic disorders |
| 133 | depmap | Identify essential genes in pancreatic cancer cell lines | Find drug sensitivity data for KRAS-mutant cancer models | Query CRISPR dependency scores for my oncology target list |
| 134 | usfiscaldata | Plot U.S. national debt trends over the last 20 years | Compare federal spending by agency for fiscal year 2025 | Fetch daily Treasury yield curve rates for bond analysis |
