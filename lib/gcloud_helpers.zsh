#!/bin/zsh

gprod() {
    gcloud container clusters get-credentials production-02 --zone us-west1-a --project kolide-production
}

gdev(){
    gcloud container clusters get-credentials cluster-1 --zone us-east1-c --project kolide-ose-testing
}

gstage(){
    gcloud container clusters get-credentials staging-us-west1-03 --zone us-west1-a --project kolide-staging
}
