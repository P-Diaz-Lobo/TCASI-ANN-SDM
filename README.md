# Repository Overview

This repository contains scripts and resources for machine learning tasks related to classification and regression. The primary folders and their contents are explained below:

## 1. Lib
   - **Lib.py**: This script provides a set of useful functions that are utilized across other scripts in the repository. It includes a class for calculating and plotting confusion matrices and a function for saving trained machine learning models.

## 2. REGRESSION-ANN
   - **regression_ann_NSA.py**: A script for building, training, and evaluating a neural network-based regression model using TensorFlow and Keras. The script includes hyperparameter tuning and outputs various results, including model visualizations and Mean Squared Error (MSE) metrics.

## 3. CLASSIFIER
   - **Species_Classifier.py**: A script for building, training, and evaluating various classification models (e.g., Naive Bayes, Logistic Regression, Random Forest, etc.) for a species classification task. The script uses scikit-learn and includes model evaluation metrics and confusion matrix plotting.

## 4. DATA-SETS
   - **data_classifier_total.csv**: Sample dataset for the classification task, including input features and the target variable.

   - **data_classifier_train.csv**: Dataset used for the training of the classifiers.

   - **data_classifier_val.csv**: Dataset used for the validation of the classifiers.

   - **data_classifier_cross_val.csv**: Dataset used for the cross-validation of the best classifier.

   - **data_211CascadeSDM.csv**: Sample dataset for the regression task, containing input specifications and output parameters.

   - **data_2orGMSDM.csv**: Sample dataset for the regression task, containing input specifications and output parameters.

   - **data_3orCascadeSDM.csv**: Sample dataset for the regression task, containing input specifications and output parameters.

   - **data_211CascadeSDM.csv**: Sample dataset for the regression task, containing input specifications and output parameters.

## Purpose
The repository serves as a collection of machine learning scripts for different tasks, showcasing classification and regression examples. It includes code for training models, hyperparameter tuning, and evaluating model performance. The 'Lib' folder centralizes utility functions used throughout the repository.

Feel free to explore, modify, and adapt the scripts based on your specific use case or dataset. Refer to individual script headers for more detailed information on each task and how to run the scripts.

# Installation

To set up the necessary environment for running the scripts in this repository, follow the steps below:

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/P-Diaz-Lobo/TCASI-ANN-SDM
   cd <repository_directory>

2. **Create Virtual Environment (Optional but recommended)**
   We do recommend using virtual environments in order to avoid conflicts with other libraries in your system. 

   INSTRUCTIONS:
   
   1-Open a terminal (or use VSCODE terminal for instance) in the folder where you extracted this repository
   
   2-Create the virtual environment: python3 -m venv .venv (optionally you can just type python instead of python3)
   
   3-Activate the virtual environment: source ./ven/bin/activate
   
   4-By doing so, all libraries and dependencies will be installed in the .venv folder. Simply remove this folder to recover disk space taken by this project's libraries.
   
   
4. **Install Dependencies:**
    ```bash
    pip install -r requirements.txt (optionally you can use pip3)
