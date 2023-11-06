FROM jupyter/base-notebook:latest

# Install Python packages
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy user files
COPY ./notebooks /home/jovyan/work

# Start Jupyter Notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888"]