htpasswd -c -B -b /root/ocp47/authentication/users.htpasswd doruk redhat
htpasswd -B -b /root/ocp47/authentication/users.htpasswd basar redhat
oc create secret generic htpass-secret --from-file=htpasswd=/root/ocp47/authentication/users.htpasswd  -n openshift-config
