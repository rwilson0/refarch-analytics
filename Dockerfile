FROM jupyter/scipy-notebook

MAINTAINER IBM CASE team

USER $NB_USER

# install TensorFlow
RUN conda install --quiet --yes 'tensorflow=1.0*'

# install tflearn and keras:
RUN pip install tflearn==0.3.2
RUN pip install keras==2.0.8

# install NLP packages:
RUN pip install nltk==3.2.4
RUN pip install gensim==2.3.0
RUN pip install wget
# install visualization tools
RUN pip install pixiedust
