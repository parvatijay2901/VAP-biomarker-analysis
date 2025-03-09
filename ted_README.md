# tliu code README

This directory contains the scripts used by tliu in the Ventilator Associated Pneumonia **(VAP)** Molecular Endotype Analysis.

The directory structure looks like the following

``` bash
VAP-biomarker-analysis
├── tliu_code
│   ├── tliu_code
│   │   ├── Mclust
│   │   │   ├── mclust_no_il10_heatmap.png
│   │   │   ├── pca_mclust_no_il10.png
│   │   │   ├── umap_mclust_no_il10.png
│   │   │   └── vap_lca_tbls_no_il10.docx
│   │   └── Mplus
│   │   │   ├── mmplus_heatmap.png
│   │   │   ├── umap_mplus.png
│   │   │   └── vap_lca_mplus.docx
│   ├── helpef_functions.R
│   ├── vap_lca_mplus.Rmd
│   └── vap_lca_tbls_no_il10.Rmd
└── ...
```

# Data Sources
Due to the sensitive nature of the data (PHI data), the data used in the analysis cannot be provided / uploaded
to the Git repository.

The data used in the study came from the Pathogenic Mechanisms of ARDS (VAP) study conducted at
Harborview Medical Center in Seattle, Washington.

The study has enrolled 466 individual patients and have taken bronchoalveolar samples from each patient for analysis.
Using the bronchoalveloar fluid, various biomarkers were measured.

# R and Mplus
This analysis was performed using R programming language (ver 4.3.2) and Mplus (ver 8.11)