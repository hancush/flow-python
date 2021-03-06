FROM python:2.7

LABEL maintainer "lucas@spideroak-inc.com"

# Update pip
RUN pip install --upgrade \
    pip

# Download and install Semaphor
RUN wget https://spideroak.com/releases/semaphor/debian \
    && dpkg -i debian \
    && rm -rf debian

# Install flow-python
RUN pip install git+https://github.com/SpiderOak/flow-python.git

# Execute python to start using flow-python
CMD python
