# use kind to create a cluster, if it doesn't exist
kind  get clusters | grep kind-renovate
if [ $? -eq 1 ]
then
    kind create cluster --name kind-renovate
fi

# create renovate namespace, if it doesn't exist
kubectl get ns renovate 2> /dev/null
if [ $? -eq 1 ]
then
    kubectl create namespace renovate
fi

# create secret
kubectl apply -f secret.yaml

# create renovate
kubectl apply -f renovate.yaml

# check status
kubectl get all -n renovate
