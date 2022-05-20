# FlaskDeployment

This app has been deployed using the AWS serverless Kubernetes orchestration service: EKS

It could have also been done using EC2 servers, monitored by auto scaling groups. This servers can be configured with Ansible, being the tool of choice as it is idempotent. 

In this case, we are using a serverless architecture and thus no server configuration is required. 

There are only a few manual steps that are required:

WE need one VM, its configuration is automated by executing the file -- setup.sh --

the we have to login awscli and docker: 

``` console
aws configure
docker login
```

then we are ready to build and deploy.