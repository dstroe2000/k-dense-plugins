# Skill Disambiguation — Lab Automation

## Lab Robots (3 skills)

| Skill | Use when |
|-------|----------|
| pylabrobot | Multi-vendor automation (Hamilton, Tecan, Opentrons) |
| opentrons-integration | Opentrons-only protocols with official API |
| ginkgo-cloud-lab | Cloud-based autonomous lab (Ginkgo RACs) |

**Rule**: Use `opentrons-integration` for Opentrons hardware. Use `pylabrobot` if mixing vendors or need simulation. Use `ginkgo-cloud-lab` for remote execution.

## ELN & Data Management (3 skills)

| Skill | Platform |
|-------|----------|
| benchling-integration | Benchling (registry, inventory, ELN, workflows) |
| labarchive-integration | LabArchives (notebook entries, attachments) |
| protocolsio-integration | protocols.io (protocol sharing, versioning) |

No overlap — each targets a specific platform.

## Genomics Platforms (2 skills)

| Skill | Platform |
|-------|----------|
| dnanexus-integration | DNAnexus (cloud genomics pipelines, dxpy SDK) |
| latchbio-integration | Latch (bioinformatics workflows, Nextflow/Snakemake) |

## Other (2 skills)

| Skill | Use when |
|-------|----------|
| omero-integration | Microscopy image management, ROIs, batch processing |
| lamindb | Biological data framework, lineage tracking, FAIR data |
