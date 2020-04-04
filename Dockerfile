from jupyter/datascience-notebook

RUN conda update -n base conda

RUN conda uninstall pandas && conda install pandas=0.25.3

ENV DATASCIENCE_NOTEBOOK_HOME=/home/jovyan/notebooks
ENV DATASCIENCE_NOTEBOOK_FILE_CACHE=$DATASCIENCE_NOTEBOOK_HOME/.cache
ENV PYTHONPATH=$DATASCIENCE_NOTEBOOK_HOME:$PYTHONPATH

# CMD ["./notebooks/scripts/download_data.sh"]

RUN pip install -U sqlalchemy psycopg2-binary


