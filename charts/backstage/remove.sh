helm uninstall backstage -n backstage

oc -n backstage delete -f ./resources/secret-backstage-postgresql.yaml
# oc -n backstage delete -f ./resources/secret-rhdh-pull-secret.yaml
