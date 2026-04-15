# Skill Disambiguation — Clinical & Healthcare

## Clinical Documents (3 skills)

| Skill | Output |
|-------|--------|
| clinical-reports | Case reports (CARE), diagnostic reports, trial reports (ICH-E3) |
| clinical-decision-support | Patient cohort analyses, treatment recommendation reports |
| treatment-plans | 3-4 page treatment plans with SMART goals, LaTeX/PDF |

**Overlap**: All produce clinical documents. Split by document type — reports vs recommendations vs care plans.

## Medical Imaging (4 skills — complexity ladder)

```
"I'm working with medical images"
  │
  ├─ Read/write DICOM files?
  │   └─ pydicom — file I/O, metadata, pixel extraction
  │
  ├─ Simple tile extraction from H&E slides?
  │   └─ histolab — lightweight, tissue detection, stain normalization
  │
  ├─ Advanced computational pathology (multiplexed, ML)?
  │   └─ pathml — 160+ formats, nucleus segmentation, graph construction
  │
  └─ Download public cancer imaging datasets?
      └─ imaging-data-commons — NCI data, no auth required
```

## Other (2 skills — NO OVERLAP)

| Skill | Use when |
|-------|----------|
| pyhealth | ML models on EHR data (mortality, readmission prediction) |
| iso-13485-certification | Medical device QMS documentation |
| scikit-survival | Time-to-event / survival analysis |
