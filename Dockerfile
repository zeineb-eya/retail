FROM quay.io/astronomer/astro-runtime:8.8.0

RUN python -m venv soda_venv && . soda_venv/bin/activate && \
    pip install --no-cache-dir soda-core-bigquery==3.0.45 && \
    pip install --no-cache-dir soda-core-scientific==3.0.45 && deactivate

RUN python -m venv dbt_venv && . dbt_venv/bin/activate && \
    pip install --no-cache-dir dbt-bigquery==1.5.3 && deactivate
