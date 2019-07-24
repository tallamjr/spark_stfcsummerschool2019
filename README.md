# STFC Summer School 2019: Apache Spark

Welcome to the Apache Spark Workshop! This repository contains the material for the the STFC Summer School 2019. The session will take place on Thursday 25th July. 

### Goals of the workshop

*  Learning the basics of cluster computing, and the big data challenges in modern science.
- Learning how to integrate scientific tools into Apache Spark, and how to perform efficient analysis on large volumes of data.


### Timetable

- Session 1: Introduction [[presentation](https://docs.google.com/presentation/d/17R3zQfdHZF3cypEYxugqTeafRYsbhkmCjQwhaph_mJo/edit?usp=sharing), [exercises](notebooks/session1.ipynb)]
	- I will review the landscape of cluster computing by addressing some of the most pressing questions today: what is cluster computing? What does it mean working in a distributed environment? What are the data and computing challenges that science is facing nowadays, and how we can tackle those? I will also introduce Apache Spark, a cluster computing framework for analysing large datasets that proved successful in the industry. I will specifically focus on the Apache Spark SQL module and DataFrames API, and we will start practicing through a series of simple exercises.
- Session 2: Apache Spark for science [[presentation](https://docs.google.com/presentation/d/1sRm9bJZYpdXG3AFCh3PIxCTVwL6FCKTW4_izxggTzqc/edit?usp=sharing), [exercises](notebooks/session2.ipynb)]
	- In this session, we will use the Apache Spark Python API (PySpark) and learn on concrete examples how to interface and play with popular scientific libraries (Numpy, Pandas, ...).
- Session 3: Going beyond [[presentation](https://docs.google.com/presentation/d/1zOnG-U69P1tUt57tYkoUXQJWgD8cFARSZek8zXB0yZs/edit?usp=sharing), [project1](notebooks/mini-projects-catalogs.ipynb), [project2](notebooks/mini-projects-images.ipynb)]
	- For the last section, we will see how to use the Spark UI to gain insights on how Apache Spark is working under the hood, and we will learn how to perform an efficient early stage debugging. We will finally end the module with real-life applications.

### How to play the notebooks?

The best way is to use Docker. We provide a Dockerfile in the repo and a script to launch pyspark with jupyter:

```bash
$ # The bash script will build the image and launch pyspark with
$ # a jupyter driver.
$ ./launch_nb_docker.sh
...
Removing intermediate container e3782eaa192c
 ---> 367a84556afd
Successfully built 367a84556afd
Successfully tagged spark_stfc:latest
[I 05:30:38.614 NotebookApp] Writing notebook server cookie secret to /home/jovyan/.local/share/jupyter/runtime/notebook_cookie_secret
[I 05:30:39.375 NotebookApp] JupyterLab extension loaded from /opt/conda/lib/python3.7/site-packages/jupyterlab
[I 05:30:39.375 NotebookApp] JupyterLab application directory is /opt/conda/share/jupyter/lab
[I 05:30:39.381 NotebookApp] Serving notebooks from local directory: /home/jovyan/work
[I 05:30:39.381 NotebookApp] The Jupyter Notebook is running at:
[I 05:30:39.382 NotebookApp] http://(b14861473286 or 127.0.0.1):8888/?token=aba4b32c134e9fbca8ce99954c9ea2554dc68b7d9990a70c
# --> Just follow the url generated using one of the two options.
```