# Terraform DynamoDB Example
Simple Terraform example to install a Dynamo DB instance to an AWS workspace. The table structure used for this outlined in this documentation [Resource: aws_dynamodb_table](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dynamodb_table)

<br>

### Requirements
- AWS CLI - [AWS CLI Install](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)
- Terraform CLI installed - [Terraform CLI Install](https://developer.hashicorp.com/terraform/downloads)

<br>

### Handling Credentials

In order to not display AWS credentials stored permanently into the AWS CLI you can instead set two environment variables:
```shell
$ export AWS_ACCESS_KEY_ID="anaccesskey"
$ export AWS_SECRET_ACCESS_KEY="asecretkey"
```

<br>

### Installation
Once you have set the environment variables, you can simply run:
- terraform init - sets up providers before any actions
- terraform plan -out=FILE - create and outputs the plan for the instance to a file
- terraform apply FILE - to create the instance, this performs the plan command if not defined
- terraform destroy - to destroy the instance

<br>

### Use in Automation
- If TF_IN_AUTOMATION is set to any non-empty value, Terraform adjusts its output to avoid suggesting specific commands to run next.
  
- You can pass the -auto-approve option to instruct Terraform to apply the plan without asking for confirmation.