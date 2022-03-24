# Step by Step
This project contains the steps to deploy a Kubernetes cluster on the AWS provider with Terraform.

## Requirements

1. Install and configure the following terraform version:
```powershell
Terraform version ~> 1.1.3
```

2. Install AWS CLI latest - Download [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html).

3. Have installed a Git Version.

4. Define the environment variables with AWS credentials:
```powershell
$ export AWS_ACCESS_KEY_ID="anaccesskey" 
$ export AWS_SECRET_ACCESS_KEY="asecretkey" 
$ export AWS_REGION="us-west-2"
```

**NOTE**: The credentials must have the grants required in this EKS solution.

4. Login on AWS CLI and following the steps:
```powershell
aws configure
```

5. Access to public repositories on GitHub 

## Deploy

1. Clone this repository.
2. Go to directory.
3. Execute the following commands:

```powershell
terraform init
terraform plan
```
4. Validate configuration and approve.
5. Apply and deploy

```powershell
terraform apply
```

6. Validate again configuration and approve.

## Clean
To delete all resources inside this state, you need to execute the following commands:
```powershell
terraform destroy
```

Validate the configuration that you want to delete and approve.
