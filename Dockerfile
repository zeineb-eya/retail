FROM quay.io/astronomer/astro-runtime:8.8.0

RUN python -m venv soda venv && source soda_venv/bin/activate && \
    pip install --nocach-dir soda-core-bigquery==3.0.45 && \
    pip install --nocach-dir soda-core-scientific==3.0.45 && deactivate