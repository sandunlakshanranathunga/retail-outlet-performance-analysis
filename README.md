# Retail Outlet Performance Analysis

A group mini project on data preprocessing, exploratory data analysis (EDA) and simple linear regression, using a messy retail outlet dataset.

**Business question:** What drives outlet performance, and how strongly does marketing spend affect revenue?

## 🛠 Tools
- **Python** (pandas, NumPy, matplotlib, seaborn) for cleaning and EDA, in a Jupyter Notebook
- **R** for simple linear regression

## 🧹 Data Cleaning (Python)
The raw dataset had several problems:

| Issue | How I fixed it |
|---|---|
| 45 duplicate rows | Removed with `drop_duplicates()` |
| Inconsistent column names (e.g. `region `, `Staff Cost`) | Renamed to a consistent `Snake_Case` style |
| Missing cost values | Back-calculated from `Operating_Cost` when only one component was missing |
| Missing `Operating_Cost` and `Profit_Margin` | Recalculated when all other inputs were available |
| Other missing numbers | Filled with the median by `Outlet_Type` |
| Missing `Region` | Filled with the most common region |
| Inconsistent text (e.g. `Conveniance`, `Northwestern`) | Standardized to one spelling per value |

## 📊 Exploratory Data Analysis
- Rent, staff and inventory costs are roughly symmetric. Operating cost, marketing spend and revenue are right-skewed.
- The cost columns are strongly correlated with each other and with operating cost, which is expected because operating cost is their sum.
- **Marketing spend has the strongest correlation with monthly revenue (r = 0.91).**
- Monthly revenue was chosen as the dependent variable because it is the main performance measure.

![Histograms](histograms.png)
![Correlation heatmap](heatmap.png)

## 📈 Regression (R)
Model: `Monthly_Revenue ~ Marketing_Spend`

| Result | Value |
|---|---|
| Intercept | 625.42 |
| Slope | 18.93 |
| R² | 82.5% |
| p-value | < 0.001 |

**Interpretation:**
- Each additional 1 unit of marketing spend is associated with about 18.93 units more monthly revenue.
- Marketing spend explains about 82.5% of the variation in revenue.
- The relationship is statistically significant.
- The residual plots show a good fit for a straight-line model.

![Regression plot](regression.png)

## 💡 Conclusion
Marketing spend is a strong driver of revenue. Marketing should be increased with care, because profit margin is not strongly tied to any single cost. Spending efficiency should be reviewed by outlet type.

## 📁 Files
- `EDA_Preprocessing.html`: full Python cleaning and EDA notebook
- `regression_analysis.R`: R regression script
- `retail_outlets_clean.csv`: cleaned dataset

## 👥 Team
Group project completed with classmates as part of a Business Analytics course.
