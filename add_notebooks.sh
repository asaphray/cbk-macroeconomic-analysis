#!/bin/bash

echo "Adding starter notebooks..."

PY_NOTEBOOKS_DIR="notebooks/python"
R_NOTEBOOKS_DIR="notebooks/r"

# Python notebooks
PY_NOTEBOOKS=(
"01_data_loading.ipynb"
"02_inflation_analysis.ipynb"
"03_monetary_analysis.ipynb"
"04_trade_analysis.ipynb"
)

# R notebooks
R_NOTEBOOKS=(
"05_gdp_analysis.Rmd"
"06_time_series_models.Rmd"
)

# Create python notebooks if they don't exist
for nb in "${PY_NOTEBOOKS[@]}"; do
    if [ ! -f "$PY_NOTEBOOKS_DIR/$nb" ]; then
        touch "$PY_NOTEBOOKS_DIR/$nb"
        echo "Created $PY_NOTEBOOKS_DIR/$nb"
    else
        echo "$PY_NOTEBOOKS_DIR/$nb already exists, skipping"
    fi
done

# Create R notebooks if they don't exist
for nb in "${R_NOTEBOOKS[@]}"; do
    if [ ! -f "$R_NOTEBOOKS_DIR/$nb" ]; then
        touch "$R_NOTEBOOKS_DIR/$nb"
        echo "Created $R_NOTEBOOKS_DIR/$nb"
    else
        echo "$R_NOTEBOOKS_DIR/$nb already exists, skipping"
    fi
done

echo "Notebook setup complete!"