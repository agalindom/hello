#check kubernetes version
kubectl version

#check minikube version
minikube version

#start minikube to use kubernetes locally
minikube start

#view nodes in cluster
kubectl get nodes

# deploy an app
kubectl create deployment kubernetes-bootcamp --image=gcr.io/google-samples/kubernetes-bootcamp:v1

# list deployment
kubectl get deployments

# run a proxy
echo -e "\n\n\n\e[92mStarting Proxy. After starting it will not output a response. Please click the first Terminal Tab\n"; 
kubectl proxy

# ssee al API's hosted in the proxy 
curl http://localhost:8001/version

# create a pod name
export POD_NAME=$(kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}')
echo Name of the Pod: $POD_NAME

# view logs of the pod
kubectl logs $POD_NAME

# view what containers are inside that Pod
kubectl describe pods

# list environment variables of the pod
kubectl exec $POD_NAME env

# start a bash session in the pods container
kubectl exec -ti $POD_NAME bash

