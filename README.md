# GetAndCleanDataProject
Getting and cleaning data course project

GETTING AND CLEANING DATA COURSE PROJECT

Project Description

The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. 
Requirement for submission is as below:
i.	a tidy data set as described below
ii.	a link to a Github repository with your script for performing the analysis, and
iii.	a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This file explains how all of the scripts work and how they are connected.

A full description is available at the site where the data was obtained: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
The data for the project: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
R script called run_analysis.R that does the following.
i.	Merges the training and the test sets to create one data set.
ii.	Extracts only the measurements on the mean and standard deviation for each measurement.
iii.	Uses descriptive activity names to name the activities in the data set
iv.	Appropriately labels the data set with descriptive activity names.
v.	Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

This repository contain:
i.	CodeBook.md: This is a  code book that describes the variables, the data and transformations/work performed to clean up data    
ii.	tidyData.txt: data
iii.	README.md: this file
iv.	run_analysis.R: R script to transform raw data set into a tidy one

Steps taken to accomplish this project:
i.	clone this repository: git clone https://github.com/Anizah/GetAndCleanDataProject
ii.	download compressed raw data
iii.	unzip raw data and copy the directory UCI HAR Dataset to data folder
iv.	open a R console and set the working directory to the repository root (use setwd())
v.	Run source file run_analysis.R (it requires the plyr package)
