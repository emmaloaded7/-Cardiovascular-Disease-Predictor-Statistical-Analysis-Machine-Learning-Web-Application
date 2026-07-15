# ❤️ Cardiovascular Disease Predictor

A Machine Learning-powered system for predicting cardiovascular disease risk in humans using clinical health indicators. This project integrates **statistical analysis in R**, **machine learning modeling in Python**, and an **interactive Streamlit web application** for real-time predictions.

---

## 📌 Project Overview

Cardiovascular disease (CVD) is one of the leading causes of death worldwide. Early prediction can help healthcare professionals identify high-risk individuals and support timely intervention.

This project develops a predictive system that analyzes patient health data and estimates the likelihood of cardiovascular disease using machine learning techniques.

---

## 🎯 Objectives

* Predict cardiovascular disease status in humans.
* Perform statistical analysis using R.
* Compare multiple machine learning models.
* Develop an interactive Streamlit dashboard for predictions.
* Evaluate model performance using Accuracy, Recall, and F1 Score.

---

## 🔄 Project Workflow

```text
Data Collection
       ↓
Data Cleaning & Preprocessing
       ↓
Exploratory Data Analysis (R & Python)
       ↓
Statistical Modeling (R)
       ↓
Machine Learning Modeling (Python)
       ↓
Model Evaluation
       ↓
Streamlit Web Application
```

---

## 🛠️ Technologies Used

### Programming Languages

* Python
* R

### Python Libraries

* Pandas
* NumPy
* Matplotlib
* Seaborn
* Scikit-Learn
* Pickle
* Streamlit

### R Packages

* corrplot
* stats (glm)
* AIC

---

## 📊 Dataset Description

The dataset contains health-related attributes commonly associated with cardiovascular disease.

| Feature           | Description                          |
| ----------------- | ------------------------------------ |
| age               | Age of patient                       |
| gender            | Gender of patient                    |
| chestpain         | Chest pain type                      |
| restingBP         | Resting blood pressure               |
| serumcholestrol   | Serum cholesterol level              |
| fastingbloodsugar | Fasting blood sugar status           |
| restingrelectro   | Resting electrocardiographic results |
| maxheartrate      | Maximum heart rate achieved          |
| exerciseangia     | Exercise-induced angina              |
| oldpeak           | ST depression induced by exercise    |
| slope             | Slope of peak exercise ST segment    |
| noofmajorvessels  | Number of major vessels              |
| target            | Cardiovascular disease status        |

---

## 📈 Exploratory Data Analysis

### Analysis Performed

* Descriptive Statistics
* Correlation Analysis
* Feature Relationship Analysis
* Class Distribution Visualization

### Visualizations

* Count Plots
* Box Plots
* Correlation Heatmaps
* Confusion Matrix

---

## 📉 Statistical Analysis (R)

Logistic Regression was used to evaluate the relationship between patient characteristics and cardiovascular disease status.

```R
model <- glm(
  target ~ age + gender + chestpain + restingBP +
  serumcholestrol + fastingbloodsugar +
  restingrelectro + maxheartrate +
  exerciseangia + oldpeak + slope +
  noofmajorvessels,
  data = dataset,
  family = "binomial"
)
```

### Statistical Objectives

* Identify significant predictors
* Estimate odds ratios
* Assess variable importance

---

## 🤖 Machine Learning Models

### Models Compared

| Model                     | Cross Validation Scores             | Accuracy (%) |
| ------------------------- | ----------------------------------- | ------------ |
| Logistic Regression       | [0.955, 0.995, 0.930, 0.975, 0.960] | 96.3         |
| Support Vector Classifier | [0.820, 0.810, 0.740, 0.810, 0.800] | 79.6         |
| Random Forest Classifier  | [0.965, 1.000, 0.960, 0.985, 0.965] | 97.5         |

---

## 🏆 Best Performing Model

### Random Forest Classifier

| Metric   | Score |
| -------- | ----- |
| Accuracy | 0.98  |
| Recall   | 0.99  |
| F1 Score | 0.99  |

The Random Forest Classifier achieved the highest predictive performance and was selected for deployment.

---

## ⚙️ Machine Learning Workflow

```text
Data Preprocessing
        ↓
Cross Validation
        ↓
Train-Test Split
        ↓
Model Training
        ↓
Performance Evaluation
```

---

## 🌐 Streamlit Web Application

### Features

* Interactive User Input Form
* Real-Time Disease Prediction
* Prediction Probability Output
* User-Friendly Interface

### Run the Application

```bash
streamlit run "C:\Users\User\Documents\Machine\Cardiovascular_Predictor_Webapp.py"
```

---

## 📂 Project Structure

```text
Machine
│
├── data/
│   └── Cardiovascular_Disease_Dataset.csv
│
├── R/
│   └── statistical_analysis.R
│
├── notebooks/
│   └── Cardiovascular_Disease_Predictor.ipynb
│
├── models/
│   └── trained_model.sav
│
├── Cardiovascular_Predictor_Webapp.py
├── predictive_system.py
├── requirements.txt
└── README.md
```

---

## 📌 Results and Findings

* Random Forest Classifier outperformed all other models.
* The model achieved excellent Accuracy, Recall, and F1 Score.
* Statistical analysis identified important cardiovascular disease predictors.
* The Streamlit application provides an easy-to-use prediction interface.

---

## 🚀 Future Improvements

* Feature selection using statistically significant variables.
* Hyperparameter optimization.
* Model explainability using SHAP values.
* Online deployment using Streamlit Cloud.
* Integration with real-world healthcare datasets.

---

## 👨‍💻 Author

**Ometoro Emmanuel**

Animal Production Graduate | Machine Learning Enthusiast

GitHub: https://github.com/Emmaloaded7
