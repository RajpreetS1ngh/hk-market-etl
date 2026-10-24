# Hong Kong Market Data ETL Pipeline

ETL pipeline for HK stocks (yfinance) and HKMA FX rates into a PostgreSQL star schema, orchestrated by Airflow.

## Status

~20% complete. Folder structure, basic extract skeleton, star schema SQL, docker-compose for Airflow + Postgres, and requirements.

## Next steps

- Full extract for stocks (yfinance) and FX (HKMA API)
- Data quality checks (nulls, duplicates, schema, sanity)
- Transform and idempotent load (INSERT ON CONFLICT)
- Airflow DAG with retries
- SQL analytics queries
- PySpark transform on Databricks
