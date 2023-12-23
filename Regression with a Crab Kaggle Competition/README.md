# Regression with a Crab Age Dataset

This folder contains a regression analysis completed for a 2023 Kaggle competition: the Regression with a Crab Age Dataset. Note: this competition was completed for academic credit from the CUNY School of Professional Studies DATA 605 course
Link: https://www.kaggle.com/competitions/playground-series-s3e16

Using a training dataset, my analysis was meant to predict crab age based on the weight of their shell, their weight without their shells, and their overall weight. To account for violations in normality, I removed outliers present in the Age data by deleting observations past the 15th and 75th percentiles. After constructing a multiple regression model, I used the model to predict crab ages in a test dataset, and I uploaded the predicted ages to Kaggle's competition board.
