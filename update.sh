oc get secret htpass-secret -ojsonpath={.data.htpasswd} -n openshift-config | base64 --decode > /root/ocp47/authentication/users.htpasswd
htpasswd -bB /root/ocp47/authentication/users.htpasswd  omer  redhat
oc create secret generic htpass-secret --from-file=htpasswd=/root/ocp47/authentication/users.htpasswd  --dry-run=client -o yaml -n openshift-config | oc replace -f -
