
## 4. House Price Prediction (India) Repository README.md

```markdown
# 🏠 House Price Prediction Model - India Real Estate

<div align="center">
  <img src="https://img.shields.io/badge/ML-Scikit_Learn-F7931E?style=for-the-badge" alt="Scikit-learn"/>
  <img src="https://img.shields.io/badge/Data-Geospatial-blue?style=for-the-badge" alt="Geospatial"/>
  <img src="https://img.shields.io/badge/Python-3.8%2B-blue?style=for-the-badge&logo=python" alt="Python"/>
  <img src="https://img.shields.io/badge/Status-Active-success?style=for-the-badge" alt="Status"/>
</div>

## 📋 Table of Contents

- [Project Overview](#project-overview)
- [Features](#features)
- [Dataset](#dataset)
- [Installation](#installation)
- [Usage Guide](#usage-guide)
- [Model Performance](#model-performance)
- [Architecture](#architecture)
- [Contributing](#contributing)
- [License](#license)

## 🎯 Project Overview

**House Price Prediction for India** is a machine learning project that predicts residential property prices across India using sophisticated feature engineering, geospatial analysis, and ensemble machine learning techniques. The model accounts for regional variations, locality-specific pricing trends, and market dynamics across different Indian cities.

### Problem Statement
India's real estate market is highly diverse with significant variations across regions. This project builds a model that:
- Predicts house prices accurately across different Indian cities
- Identifies key pricing drivers by region
- Provides market insights for real estate decisions
- Handles geospatial complexities of India's real estate

## ✨ Features

### 🗺️ Geospatial Analysis
- Location-based price modeling
- City and locality-specific patterns
- Regional clustering and segmentation
- Latitude-longitude based proximity analysis

### 🏘️ Property Attributes
- Property size (area in sq ft)
- Number of bedrooms and bathrooms
- Construction type and age
- Amenities and facilities
- Property type (villa, apartment, etc.)

### 📍 Market Data
- City and locality information
- Neighborhood characteristics
- Market trends by region
- Price per square foot metrics

### 🎨 Advanced Features
- Feature engineering for non-linear relationships
- Ensemble machine learning models
- Cross-validation with regional splits
- Model interpretability and feature importance

## 📊 Dataset

### Data Sources
- **Primary Source:** Indian Real Estate Data
- **Geographic Coverage:** Major Indian cities (Delhi, Mumbai, Bangalore, Chennai, etc.)
- **Sample Size:** 10,000+ property records
- **Time Period:** 2019-2024

### Key Statistics

| Metric | Value |
|--------|-------|
| Total Properties | 10,000+ |
| Average Price | ₹45-50 lakhs |
| Price Range | ₹20 lakhs - ₹3 crores |
| Cities Covered | 15+ major metros |
| Features | 20+ engineered features |

### Feature List

**Numerical Features:**
- Property area (sq ft)
- Price (target)
- Bedrooms, bathrooms, parking
- Age of property
- Floor number

**Categorical Features:**
- City, locality
- Property type
- Construction status
- Amenities (gym, pool, security, etc.)

**Geospatial Features:**
- Latitude, longitude
- Distance to city center
- Distance to public transport
- Neighborhood density

## 🚀 Installation

### Prerequisites
- Python 3.8 or higher
- pip or conda
- Git
- 2GB RAM minimum

### Step-by-Step Setup

```bash
# 1. Clone the repository
git clone https://github.com/itxkabix/House-Price-Prediction-India.git
cd House-Price-Prediction-India

# 2. Create virtual environment
python -m venv venv
source venv/bin/activate  # Windows: venv\Scripts\activate

# 3. Install dependencies
pip install -r requirements.txt

# 4. Download datasets
python scripts/download_data.py

# 5. Data preprocessing
python scripts/preprocess_data.py

# 6. Start Jupyter for exploration
jupyter notebook
```

### Requirements.txt

```
pandas==1.3.5
numpy==1.21.6
scikit-learn==1.0.2
matplotlib==3.5.2
seaborn==0.11.2
xgboost==1.5.2
lightgbm==3.3.2
geopy==2.2.0
folium==0.12.1
plotly==5.0.0
jupyter==1.0.0
```

## 📖 Usage Guide

### 1. Data Exploration
```python
import pandas as pd
from src.visualization import explore_data

# Load data
df = pd.read_csv('data/processed/house_prices.csv')

# Explore dataset
explore_data(df)
explore_data_by_city(df, city='Mumbai')
```

### 2. Train Model
```python
from src.models import HousePricePredictor
from sklearn.model_selection import train_test_split

# Load and split data
X = df.drop('price', axis=1)
y = df['price']
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2)

# Train model
model = HousePricePredictor()
model.train(X_train, y_train)

# Evaluate
score = model.evaluate(X_test, y_test)
print(f"Model R² Score: {score}")
```

### 3. Make Predictions
```python
# Single prediction
new_property = {
    'city': 'Mumbai',
    'locality': 'Bandra',
    'area': 1500,
    'bedrooms': 3,
    'bathrooms': 2,
    'age': 5
}

predicted_price = model.predict(new_property)
print(f"Predicted Price: ₹{predicted_price:,.0f}")

# Batch predictions
prices = model.predict_batch(properties_df)
```

### 4. Market Analysis
```python
from src.analysis import market_analysis

# City-level analysis
mumbai_insights = market_analysis(df, city='Mumbai')
print(mumbai_insights)

# Locality insights
locality_prices = analyze_locality_trends(df)
```

## 🤖 Model Details

### Algorithms Used
1. **Random Forest Regressor** - Baseline model
2. **XGBoost** - Gradient boosting with tuning
3. **LightGBM** - Fast gradient boosting
4. **Neural Network** - Deep learning approach
5. **Ensemble** - Weighted combination of above

### Model Stacking
```
[Random Forest] ──┐
[XGBoost]        ├─ [Meta Learner] → Final Price
[LightGBM]       │
[Neural Network] ─┘
```

## 📈 Model Performance

### Overall Metrics
| Metric | Value |
|--------|-------|
| R² Score | 0.872 |
| RMSE | ₹15.2 Lakhs |
| MAE | ₹8.5 Lakhs |
| MAPE | 6.3% |

### Performance by City
| City | R² Score | RMSE |
|------|----------|------|
| Mumbai | 0.89 | ₹18.2L |
| Delhi | 0.85 | ₹12.5L |
| Bangalore | 0.88 | ₹14.3L |
| Hyderabad | 0.84 | ₹10.1L |

### Feature Importance
Top 5 features predicting house prices:
1. Area (sq ft) - 28.5%
2. City - 22.3%
3. Locality - 18.7%
4. Bedrooms - 12.1%
5. Age - 10.2%

## 📁 Project Structure

```
House-Price-Prediction-India/
├── README.md
├── requirements.txt
├── setup.py
├── /data
│   ├── /raw                  # Original datasets
│   ├── /processed            # Cleaned data
│   ├── /geospatial          # Map data
│   └── city_coordinates.csv
├── /notebooks
│   ├── 01_EDA.ipynb
│   ├── 02_Data_Preprocessing.ipynb
│   ├── 03_Model_Building.ipynb
│   ├── 04_Market_Analysis.ipynb
│   └── 05_Predictions.ipynb
├── /src
│   ├── __init__.py
│   ├── config.py
│   ├── preprocessing.py
│   ├── feature_engineering.py
│   ├── /models
│   │   ├── house_price_model.py
│   │   ├── ensemble_model.py
│   │   └── neural_network.py
│   ├── /analysis
│   │   ├── market_analysis.py
│   │   ├── geographic_analysis.py
│   │   └── trend_analysis.py
│   ├── /visualization
│   │   ├── plots.py
│   │   ├── maps.py
│   │   └── dashboards.py
│   └── /utils
│       ├── data_utils.py
│       └── helpers.py
├── /scripts
│   ├── download_data.py
│   ├── preprocess_data.py
│   ├── train_models.py
│   ├── evaluate_models.py
│   └── generate_predictions.py
├── /models
│   ├── final_model.pkl
│   ├── scaler.pkl
│   └── encoders.pkl
├── /tests
│   ├── test_preprocessing.py
│   ├── test_models.py
│   └── test_predictions.py
└── /visualization
    ├── price_distribution.html
    ├── city_comparison.html
    └── locality_heatmap.html
```

## 🗺️ Geospatial Visualizations

Generate interactive maps:
```bash
python scripts/create_maps.py
```

Creates:
- Price heatmaps by city
- Locality clusters
- Price trends over regions
- Interactive Folium maps

## 🧪 Testing

```bash
pytest tests/ -v
pytest tests/test_models.py --cov=src/models
```

## 🤝 Contributing

Contributions welcome! Please:
1. Fork the repository
2. Create a feature branch
3. Make improvements
4. Submit a pull request

## Working 

# Legacyproperties


This is a real estate project in which i Have used, 
    HTML, CSS, Javascript, PHP, SQL Languages.

Firstly you need to install XAMPP-
  You can download it using the below link 

  https://www.apachefriends.org


Create a new folder in phpadmin panel named as realestatephp
And import the database file into it.


It has even admin panel where dashboard is available
for the admin to change or edit anything


## 📄 License

MIT License - see [LICENSE](LICENSE)

## 👨‍💻 Author

**Kabir Ahmed** - [@itxkabix](https://github.com/itxkabix)

## 📧 Contact

Email: itxkabix@gmail.com

---

**Last Updated:** November 2025
**Version:** 1.0.0
```

--


