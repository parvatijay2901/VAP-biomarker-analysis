# Ventilator Associated Pneumonia (VAP) Subphenotype Analysis

## Project Overview
Ventilator-Associated Pneumonia (VAP) is a critical healthcare challenge in intensive care units (ICUs), contributing to increased mortality and prolonged hospital stays. This project aims to identify distinct subphenotypes of VAP patients using Latent Class Analysis (LCA), K-Means Clustering, and Gaussian Mixture Models (GMM). By utilizing biomarker profiles and clinical data, we analyze associations between subphenotypes and key patient outcomes such as hospital mortality, ventilator-free days (VFDs), and severity of illness.

## Project Details & Final Deliverables
- For more details on the project execution, please visit [this directory](https://github.com/parvatijay2901/VAP-biomarker-analysis/tree/main/src).
- The final delivery documents (report and poster) can be found in [this directory](https://github.com/parvatijay2901/VAP-biomarker-analysis/tree/main/docs/Final_Delivery)

## Folder Directory Structure
The project is structured into subdirectories as following,

``` bash
VAP-biomarker-analysis
├── LICENSE
├── README.md
├── docs
│   ├── Background_Research
│   │   ├── Parvati_Background_Research.docx
│   │   └── Ted_Background-Research-11_29.docx
│   ├── Final_Delivery
│   │   ├── capstone-project_poster.pdf
│   │   └── capstone-project_report.pdf
│   ├── Project_Planning
│   │   ├── Data-Pipeline-11_21.docx
│   │   ├── Problem-Statement-11_14.docx
│   │   ├── Problem-Statement-11_14.pptx
│   │   ├── Proposal-2_12.docx
│   │   ├── Proposed-Schedule-12_5.docx
│   │   └── Team-Planning-2_4.docx
│   └── Team_Info
│       ├──  Team-Bios-11_7.docx
│       └──  Team-Info-2_4.docx
├── results
│   ├── LCA
│   │   ├── Mclust
│   │   │   ├── mclust_no_il10_heatmap.png
│   │   │   ├── pca_mclust_no_il10.png
│   │   │   ├── umap_mclust_no_il10.png
│   │   │   └── vap_lca_tbls_no_il10.docx
│   │   └── Mplus
│   │       ├── mplus_heatmap.png
│   │       ├── umap_mplus.png
│   │       └── vap_lca_mplus.docx
├── src
│   ├── README.md
│   ├── vap_R_lca_mplus.Rmd
│   ├── vap_R_lca_tbls_no_il10.Rmd
│   ├── vap_py-01_clean_data.ipynb
│   ├── vap_py-02_K-Means_clustering.ipynb
│   ├── vap_py-03_GMM_clustering.ipynb
│   ├── vap_py-04_select_key_biomarkers.ipynb
│   └── vap_py-05_statistical_analysis.ipynb
└── utils
    ├── helper_functions.R
    └── requirements.txt
```
