Login

oc login https://master-b59d.oslab.opentlc.com:8443 --insecure-skip-tls-verify

Time

S2I deployment
oc new-app https://github.com/VeerMuchandi/time --context-dir=rhel

scale up the app
oc scale --replicas=3 dc/time
oc scale --replicas=1 dc/time

autoscale 
oc autoscale dc/time --min=1 --max=10 --cpu-percent=80
oc get hpa

BlueGreen

change image.php on bluegreen repo to use blue - commit and push

oc new-app --image-stream=php --code=https://github.com/samueltauil/bluegreen.git --name=blue

oc expose service blue --name=bg

change image.php on bluegreen to use green repo commit and push

oc new-app --image-stream=php --code=https://github.com/samueltauil/bluegreen.git --name=green


CI/CD

Log to the oselab
ssh stauilrh@oselab-b59d.oslab.opentlc.com

clone gogs custom-base-image

oc login https://master-b59d.oslab.opentlc.com:8443 --insecure-skip-tls-verify=true

