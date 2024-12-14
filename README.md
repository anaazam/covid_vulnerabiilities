# COVID Vulnerabilities Analysis

This repository contains data and code for analyzing the economic vulnerabilities caused by the COVID-19 pandemic. The analysis focuses on income loss and its determinants in specific sectors and demographic groups.

## Directory Structure

```
.
├── data/
│   ├── covid_vulnerabilities_clean.csv  # Processed dataset in CSV format
├── scripts/
│   ├── covid_vulnerabilities_analysis.R  # Analysis script in R
├── results/
│   ├── covid_vulnerabilities_analysis.csv  # Model results
│   ├── summary_stats.csv  # Summary statistics
└── README.md  # Project documentation
```

## Files

### Data
- `covid_vulnerabilities_clean.csv`: Processed dataset containing income loss and demographic information.

### Script
- `covid_vulnerabilities_analysis.R`: R script for preprocessing, exploratory analysis, and logistic regression modeling.

### Results
- `covid_vulnerabilities_analysis.csv`: Dataset with model predictions.
- `summary_stats.csv`: Summary statistics including average income loss and severe case counts.

## Installation and Requirements

### R Dependencies
Install the following R packages before running the script:

```R
install.packages(c("haven", "dplyr"))
```

### Usage
1. Clone this repository:
   ```bash
   git clone https://github.com/anaazam/covid_vulnerabilities.git
   cd covid_vulnerabilities
   ```

2. Run the R script:
   ```R
   source("scripts/covid_vulnerabilities_analysis.R")
   ```

3. Outputs will be saved in the `results/` directory.

## Methodology

The analysis examines income loss and its determinants using logistic regression and chi-square tests. Key hypotheses include:
- **H1**: Vulnerable groups, such as certain age and ethnic categories, face amplified impacts during crises.
- **H2**: Less visible forms of sex work gain prominence during restrictive periods.

Fixed-effects regression was applied to model price dynamics and interactions across demographic and service segments. The dataset includes variables such as age, gender, sector, income loss, and transaction prices.

## Key Findings

Results showed that:
- Existing vulnerabilities persisted but were not exacerbated during the crisis.
- Transaction activity shifted to less visible, independent forms of work, potentially increasing risks.
- Severe income losses were concentrated among specific segments, but resilience in other areas was evident.

## Data Source and Ethics

The data was obtained from `hookers.nl` as part of research on prostitution markets. All analyses adhere to ethical standards, ensuring confidentiality and the responsible handling of sensitive information.

## Citation

This analysis is informed by the findings of:
Azam, A., Adriaenssens, S., & Hendrickx, J. (2021). How Covid-19 affects prostitution markets in the Netherlands and Belgium: dynamics and vulnerabilities under a lockdown. European Societies, 23(sup1), S478–S494. DOI: [10.1080/14616696.2020.1828978](https://doi.org/10.1080/14616696.2020.1828978)

## License

This project is licensed under the MIT License.
