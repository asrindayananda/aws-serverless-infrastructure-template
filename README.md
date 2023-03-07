# Serverless Infrastructure Template


## Architecture / Deployment

Deploys to AWS with GitHub Action and Terraform

Uses a GitHub Action gamer-speed-test\.github\workflows\deploy.yml
- Currently most of this is commented out as need AWS keys

GitHub Action -> 
    Terraform -> 
        S3 Website Bucket Created -> 
        AWS Lambda function Created -> 
            -> hello-world JS app deployed to Lambda ->
        API Gateway Created -> 
    Pushes all files in /public -> S3 Website Bucket

Result
    - Website stored in S3
    - AWS Lambda function


## Create infrastructure with Terraform 

- Pull repo down
- [Install terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)
- [Configure AWS Keys](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-envvars.html)
- In serverless-infrastructure-template\terraform\variables.tf change the bucket name to something unique on line 12 `default = "<ADD_NEW_NAME>"`
- `cd terraform`
- `terraform init`
- `terraform plan`
- `terraform apply`
- terraform will output the s3 bucket name, lambda function and api gateway url

## Destroy all infrastructure

- `terraform destroy`

# Local debugging
## Install node
```
sudo apt update
sudo apt -y install nodejs
node -v
```
## Run node.js
cd debugging
node debug.js 
Javascript file
debugging/debug.js

# Credits 
- [Create Lambda API Gateway in Terraform](https://learn.hashicorp.com/tutorials/terraform/lambda-api-gateway?in=terraform/aws)