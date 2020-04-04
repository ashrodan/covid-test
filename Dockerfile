from jupyter/datascience-notebook

RUN conda update -n base conda

RUN conda uninstall pandas && conda install pandas=0.25.3

ENV DATASCIENCE_NOTEBOOK_HOME=/home/jovyan/notebooks
ENV DATASCIENCE_NOTEBOOK_FILE_CACHE=$DATASCIENCE_NOTEBOOK_HOME/.cache
ENV PYTHONPATH=$DATASCIENCE_NOTEBOOK_HOME:$PYTHONPATH

RUN pip install sqlalchemy psycopg2-binary

CMD "curl 'https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_deaths_global.csv' >> 'data/deaths_raw.csv'"
COPY /data/deaths_raw.csv ./data/