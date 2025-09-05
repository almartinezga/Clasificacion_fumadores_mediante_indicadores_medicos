# Prediction of Smokers through Bio Signals: Binary Classification

## Summary
This project was developed in collaboration with fellow participants as part of a Data Science diploma program.  Using a dataset of over **159,000 health** records containing variables such as vision, hearing, blood pressure, cholesterol, glucose, hemoglobin, liver enzymes, BMI, and dental health. We tested multiple machine learning models to assess their predictive power.

The goal is to **detect smoking habits from biomedical signals**, which can support **early prevention, public health interventions, and risk profiling** for conditions like lung cancer, diabetes, and cardiovascular diseases.


## Key steps completed
- **Data Wrangling & Cleaning**→ Outlier removal, feature engineering (e.g., BMI calculation), and variable transformation.
- **Exploratory Data Analysis (EDA)** → Boxplots, histograms, correlation heatmaps to understand distributions and detect anomalies.
- **Data Filtering** → From 24 variables and 159,256 rows down to ``22 variables and 139,585 rows`` after cleaning.
- **Class Balancing** → Subsampling to address imbalance between smokers and non-smokers.
- **Modeling** → Implemented ``Decision Trees, XGBoost, and K-Nearest Neighbors (KNN)``.
- **Evaluation** → Compared balanced vs unbalanced training sets to assess real-world trade-offs.


---

## Repository content

- `README.md` → This documentation.  
- `smoking_status_prediction.Rmd` → Main R Markdown script with full data and predictive analysis.
- `smoking_status_prediction.html` → Rendered HTML report with the full analysis, visualizations, and results.  
- `requirements.R` → Script to install all required R libraries.
- `Findings.pdf` → Presentation summarizing findings and results.
- ``Dataset``: **Smokers.csv**
  - You can download it directly from Kaggle: [Body signal of smoking](https://www.kaggle.com/datasets/kukuroo3/body-signal-of-smoking)  
  - Once downloaded, place it in the project root directory before running the notebook. 

---

## Key Insights
1. **Decision Tree**
- Accuracy ≈ 71% (balanced)
- Accuracy ≈ 72% (unbalanced)
2. **XGBoost**
- Accuracy ≈ 77.17% (unbalanced)
- Accuracy ≈ 76% (balanced)
3. **KNN**
- Accuracy ≈ 72% (both balanced & unbalanced)

Overall, **XGBoost performed best**, suggesting non-linear relationships between biomedical signals and smoking status.

## Impact and Contribution
This analysis shows that biomedical indicators can be leveraged to:
- Anticipate potential health risks in smokers.
- Support ``preventive`` healthcare and public ``health campaigns``.
- Provide a baseline for integrating ``behavioral data`` (e.g., smoking frequency, duration, intention to quit) in future studies.

---

## Limitations
- Outliers may reflect actual sick patients rather than noise; separating these cases could refine predictions.
- The dataset lacks behavioral smoking details (frequency, years smoking, quit attempts).
- The models were trained on structured biomedical data only; ``no lifestyle or socio-economic variables were included``.

## Next steps
- Apply additional models (e.g., Random Forests, Logistic Regression, Deep Learning).
- Stratify samples by age, sex, or health condition for subgroup analysis.
- Collect and integrate behavioral variables such as smoking intensity and quitting attempts.
- Test models with external validation datasets to confirm generalizability.