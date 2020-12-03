FROM python:3.7.3-stretch

# Working Directory
WORKDIR /app

# Copy source code to working directory
COPY . hello.py /app/

# Install packages from requirements.txt and download repo with necessary files
RUN pip install --upgrade pip &&\
	pip install --trusted-host pypi.python.org -r requirements.txt

RUN apt-get update && \
	apt-get install vim -y

# run prometheus
RUN wget https://github.com/prometheus/prometheus/releases/download/v2.23.0/prometheus-2.23.0.linux-amd64.tar.gz && \
	tar xvfz prometheus-*.tar.gz 

# expose port 80
EXPOSE 80 9090

# # Run app.py at container launch
CMD ["python", "hello.py"]
