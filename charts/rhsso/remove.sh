helm uninstall keycloak -n backstage
oc -n backstage get csv | grep rhsso | awk '{print "oc -n backstage delete csv "$1}' | sh
