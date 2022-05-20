# FlaskDeployment

This app has been deployed using the AWS serverless Kubernetes orchestration service: EKS

It could have also been done using EC2 servers, monitored by auto scaling groups. This servers can be configured with Ansible, being the tool of choice as it is idempotent. 

In this case, we are using a serverless architecture and thus no server configuration is required. <br><br>

<hr>

Present and future considerations

*  Scalability: the solution is scalable by default, we need to focus only in the build and the deployment will be orchestrated by the cluster. The developers will be left with only the task of writting code, then the build must be supervised, however, the deployment can happen with CI/CD pipelines using Jenkins, using the bash scripts here to guide the Jenkinsfile so we can test and detect errors as early on as possible

* Recovery: the choice of kubernetes makes recovery automatic, spinning up more nodes if one of them fails. Then further steps can be taken to make the system more resilient.

* Security: the basic security will happen with proper configuration of the network, configuring NACLs and Route tables as well as security groups. Further steps can be taken like using hashing algorithms when storing customer data, so what we compare are the hashes and not plain text, hashing is a one way encription and this would avoid sensitive data being exposed if there is a data breach.

<hr>

There are only a few manual steps that are required:

WE need one VM, its configuration is automated by executing the file -- setup.sh --

the we have to login awscli and docker: 

``` console
aws configure
docker login
```

then we are ready to build and deploy.
<br><br>

<p align="right"> Daniel Diaz Souto</p>