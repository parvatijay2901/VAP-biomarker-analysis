## Data Source
Due to the sensitive nature of the data (PHI data), the data used in the analysis cannot be provided / uploaded
to the Git repository.
- The data used in the study came from the Pathogenic Mechanisms of ARDS (VAP) study conducted at
Harborview Medical Center in Seattle, Washington.
- The study has enrolled 466 individual patients and have taken bronchoalveolar samples from each patient for analysis.
Using the bronchoalveloar fluid, various biomarkers were measured.

## Source Code
This directory contains scripts and notebooks for data preprocessing, clustering, feature selection, and statistical analysis. 

You can execute them in order to replicate the full analysis pipeline:
- [**vap_py-01_clean_data.ipynb**](https://github.com/parvatijay2901/VAP-biomarker-analysis/blob/main/src/vap_py-01_clean_data.ipynb): Data cleaning and preprocessing (handling missing values, transformations, normalization).
- [**vap_py-02_K-Means_clustering.ipynb**](https://github.com/parvatijay2901/VAP-biomarker-analysis/blob/main/src/vap_py-02_K-Means_clustering.ipynb): K-Means clustering to identify potential VAP subphenotypes.
- [**vap_py-03_GMM_clustering.ipynb**](https://github.com/parvatijay2901/VAP-biomarker-analysis/blob/main/src/vap_py-03_GMM_clustering.ipynb): Gaussian Mixture Models (GMM) clustering for more flexible cluster assignment.
- [**vap_py-04_select_key_biomarkers.ipynb**](https://github.com/parvatijay2901/VAP-biomarker-analysis/blob/main/src/vap_py-04_select_key_biomarkers.ipynb): Feature selection using LASSO regression to identify key biomarkers.
- [**vap_py-05_statistical_analysis.ipynb**](https://github.com/parvatijay2901/VAP-biomarker-analysis/blob/main/src/vap_py-05_statistical_analysis.ipynb): Statistical tests, regression models (Poisson, Logistic) for association analysis.
- [**vap_R_lca_mplus.Rmd**](https://github.com/parvatijay2901/VAP-biomarker-analysis/blob/main/src/vap_R_lca_mplus.Rmd): Latent Class Analysis (LCA) performed in R and Mplus for subphenotype identification.
- [**vap_R_lca_tbls_no_il10.Rmd**](https://github.com/parvatijay2901/VAP-biomarker-analysis/blob/main/src/vap_R_lca_tbls_no_il10.Rmd): Additional LCA analysis excluding IL-10 biomarker.

You can execute these scripts in order to reproduce the full workflow, from data preprocessing to clustering and statistical evaluation.

## Programming Languages Used
This project was conducted using the following programming languages:
- Python (ver 3.10)
- R (ver 4.3.2)
- Mplus (ver 8.11)