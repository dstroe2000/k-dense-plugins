# Skill Disambiguation — Physics & Engineering

## 11 skills — MINIMAL OVERLAP (distinct domains)

| Skill | Domain | Use when |
|-------|--------|----------|
| astropy | Astronomy | Celestial coordinates, FITS files, cosmology |
| fluidsim | CFD | Navier-Stokes, turbulence, geophysical flows |
| matlab | Numerical computing | MATLAB/Octave scripts, signal processing |
| pymatgen | Materials science | Crystal structures, phase diagrams, Materials Project |
| cobrapy | Systems biology | Metabolic modeling, FBA, gene knockouts |
| geomaster | Remote sensing | Satellite imagery, spatial analysis, earth observation |
| geopandas | GIS | Shapefiles, spatial joins, choropleth maps |
| neuropixels-analysis | Electrophysiology | Neural recordings, spike sorting, Kilosort4 |
| neurokit2 | Biosignals | ECG, EEG, EDA, respiratory signal processing |
| matchms | Metabolomics | Mass spectra comparison, compound identification |
| pyopenms | Proteomics | LC-MS/MS pipelines, peptide identification |

### Only Overlap: Geospatial

`geomaster` (broad remote sensing + 30 domains) vs `geopandas` (vector data ops):
- Need satellite imagery processing → geomaster
- Need shapefile/GeoJSON manipulation → geopandas
- geomaster may invoke geopandas internally for vector operations

### Only Overlap: Mass Spectrometry

`matchms` (spectral similarity, metabolomics) vs `pyopenms` (full proteomics platform):
- Simple spectral matching → matchms
- Full LC-MS/MS pipeline → pyopenms
