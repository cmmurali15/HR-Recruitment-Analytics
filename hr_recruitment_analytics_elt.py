
from airflow.decorators import dag, task
from datetime import datetime

@dag(
    dag_id="hr_recruitment_analytics_elt",
    start_date=datetime(2026, 11, 1),
    schedule=None,
    catchup=False,
    tags=["HR Analytics", "PySpark", "ELT"]
)
def hr_recruitment_analytics_elt():

    @task
    def extract_data():
        print("Step 1: Recruitment source data identified.")
        return "/content/recruitment_curated.csv"

    @task
    def transform_with_pyspark(source_file):
        print("Step 2: PySpark transformation stage completed.")
        print("Source file:", source_file)
        return "/content/recruitment_pyspark_final.csv"

    @task
    def load_analytics_dataset(final_file):
        print("Step 3: Final analytics dataset prepared.")
        print("Output file:", final_file)

    source = extract_data()
    transformed = transform_with_pyspark(source)
    load_analytics_dataset(transformed)

hr_recruitment_analytics_elt()
