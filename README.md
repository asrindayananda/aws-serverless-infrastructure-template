# Serverless Infrastructure Template

# Architecture / Deployment

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

## Terraform
See gamer-speed-test\terraform\variables.tf
for S3 website bucket name

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
- [Create Lambda API Gateway in Terraform](https://learn.hashicorp.com/tutorials/terraform/lambda-api-gateway?in=terraform/aws