# curl-every-10seconds

[![](https://img.shields.io/docker/cloud/build/hermanho/curl-every-10seconds.svg?style=flat-square)](https://hub.docker.com/r/hermanho/curl-every-10seconds/builds)
[![MicroBadger](https://images.microbadger.com/badges/image/hermanho/curl-every-10seconds.svg)](https://microbadger.com/images/hermanho/curl-every-10seconds)


Alpine-based image with just curl and run every 10 seconds within 1 minute

## Usage

Create a yaml file "cron.yaml" such as:

```yaml
apiVersion: batch/v1beta1
kind: CronJob
metadata:
  name: cronjob1
spec:
  schedule: "*/1 * * * *"
  jobTemplate:
    spec:
      template:
        spec:
          containers:
            - name: cronjob1
              image: hermanho/curl-every-10seconds
              args:
                - -s
                - https://www.google.com/
          restartPolicy: OnFailure
```

Execute the following command to deploy

```sh
$ kubectl apply -f cron.yaml
```
