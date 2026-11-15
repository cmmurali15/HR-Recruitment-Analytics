# HR Recruitment Analytics

## Project Overview

This project demonstrates an end-to-end HR Recruitment Analytics workflow using Python, MySQL, SQL, Power BI, PySpark, and Apache Airflow.

The project analyzes recruitment data across job roles, locations, candidate sources, interview stages, experience levels, and hiring outcomes. It also demonstrates an ELT-style analytics workflow using PySpark for data transformation and Apache Airflow for workflow orchestration.

## Technologies Used

- Python
- MySQL
- SQL
- Power BI
- PySpark
- Apache Airflow
- Google Colab
- GitHub

## Dataset

The recruitment dataset contains 500 candidate records covering:

- Candidate details
- Company and job role
- Interview round/stage
- Pass, fail, and pending results
- Completion and validation status
- Interview date
- Location
- Recruitment source
- Years of experience
- Candidate outcome

## SQL Analytics

SQL analysis was performed to evaluate:

- Overall hiring success rate
- Candidate results by job role
- Hiring performance by location
- Recruitment source effectiveness
- Interview round distribution
- Candidate outcomes
- Selection rate by experience level

## PySpark Processing

PySpark was used to process and transform the recruitment dataset and generate an analytics-ready output dataset.

The transformed output is stored as:

`recruitment_pyspark_final.csv`

## Apache Airflow ELT Workflow

A custom Apache Airflow DAG was created to demonstrate orchestration of the recruitment analytics workflow.

DAG:

`hr_recruitment_analytics_elt.py`

The workflow contains three logical stages:

1. Extract / identify the recruitment source data
2. Transform the data using the PySpark workflow
3. Prepare the final analytics dataset

The Airflow DAG was successfully executed and validated through an Airflow DAG test run.

## Key Analytics Results

- Total candidate records: 500
- Overall pass rate: 41.40%
- Data Engineer had the highest job-role pass rate: 50.98%
- Mumbai had the highest location pass rate: 46.08%
- Naukri had the highest recruitment-source pass rate: 47.96%
- Selected candidates: 207
- Not selected candidates: 293

## Repository Files

- `HR_Recruitment_Analytics_PySpark.ipynb` — PySpark and Airflow project notebook
-  HR_Recruitment_Analytics_SQL.sql` — SQL queries for recruitment analytics and KPI analysis`
- `hr_recruitment_analytics_elt.py` — Apache Airflow DAG
- `recruitment_data.csv` — Recruitment dataset
- `recruitment_curated.csv` — Curated recruitment dataset
- `recruitment_pyspark_final.csv` — Final PySpark analytics dataset
- `README.md` — Project documentation

## Project Purpose

This project was developed as a hands-on analytics portfolio project to demonstrate practical skills in recruitment analytics, SQL analysis, data transformation, ELT concepts, PySpark processing, workflow orchestration, and business intelligence.
