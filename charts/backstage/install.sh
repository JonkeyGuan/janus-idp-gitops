helm repo add openshift-helm-charts https://charts.openshift.io/
helm repo update

oc -n backstage apply -f ./resources/secret-backstage-postgresql.yaml
# oc -n backstage apply -f ./resources/secret-rhdh-pull-secret.yaml

helm install backstage openshift-helm-charts/redhat-developer-hub --values values.yaml -n backstage --create-namespace
