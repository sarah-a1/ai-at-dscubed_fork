import psycopg2
import os
from pathlib import Path
from dotenv import load_dotenv

load_dotenv()

DATABASE_URL = os.getenv("DATABASE_URL")
if DATABASE_URL is None:
    raise ValueError("DATABASE_URL not set. Please check your .env file.")

# Connect to database
def get_connection():
    return psycopg2.connect(DATABASE_URL)

# Run SQL code in a given file
def run_sql_file(file_path):
    with open(file_path, 'r') as f:
        sql = f.read()
    with get_connection() as connection:
        with connection.cursor() as current:
            current.execute(sql)
        connection.commit()

# Run all DDL files in brain/postgres/sarah/DDL
def run_ddl_files():
    ddl_dir = Path(__file__).parent / 'DDL'
    ddl_files = sorted(ddl_dir.glob('*.sql'))  # Ensures consistent execution order
    for file_path in ddl_files:
        run_sql_file(str(file_path))

# Run all DML files in brain/postgres/sarah/DML
def run_dml_files():
    dml_dir = Path(__file__).parent / 'DML'
    dml_files = sorted(dml_dir.glob('*.sql'))
    for file_path in dml_files:
        run_sql_file(str(file_path))

# Prints all rows in a table
def view_table(table_name):
    print(table_name)
    with get_connection() as connection:
        with connection.cursor() as current:
            current.execute(f"SELECT * FROM {table_name};")
            rows = current.fetchall()
            for row in rows:
                print(row)
    print("\n")

if __name__ == "__main__":
    # Run all SQL files - both DDL and DML
    run_ddl_files()
    run_dml_files()
    
    # View both created tables
    view_table('project_two.sarah')
    view_table('project_two.genre_stats')
