setup:
	python3 -m venv ~/.hello

install:
	pip install --upgrade pip && \
		pip install -r requirements.txt
		
test: 
	### comment code if no test available
	# python -m pytest -vv --cov=myrepolib tests/*.py
	# python -m pytest --nbval notebook.ipynb

install-prometheus:
	wget https://github.com/prometheus/prometheus/releases/download/v2.23.0/prometheus-2.23.0.linux-amd64.tar.gz && \
		tar xvfz prometheus-*.tar.gz
    
lint:
	pylint --disable=R,C hello.py 

# run-kubernetes:
# 	./run-kubernetes.sh
# delete-k8-pod:
# 	./delete_pod_kube.sh

all: install lint test
