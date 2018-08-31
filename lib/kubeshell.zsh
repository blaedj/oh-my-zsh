function kubeshell() {
    TENANT=$1
    POD=$(kubectl -n $TENANT get pods | grep cloud-app | head -1 | awk '{print $1}')
    kubectl -n $TENANT exec -it $POD /bin/bash 
}
