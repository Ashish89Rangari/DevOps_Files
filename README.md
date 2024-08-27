# DevOps_Files
All DevOps file, CICD pipeline scripts

# Terraform Commands #

1) 	To Initialize a working directory 
```
terraform init

```
2) To Format and validate Terraform Code
```
terraform fmt
terraform validate

```
3) To Creates an execution plan (dry run)
```
terraform plan

```
4) To Executes changes to the actual environment and Create Infrastructure
```
terraform apply

```
5) To Executes changes to the actual environment 	Apply changes without being prompted to enter ”yes”
```
terraform apply --auto-approve

```
6) To access secret access key 【 Here, secret_key – variable】
```
terraform output --raw secret_key

```
7) To access IAM user password 【 Here, user_password – IAM user name variable 】
```
terraform output --raw user_password

```
8) To Delete whole Infrastructure or Environment
```
terraform destroy  --auto-approve
terraform destroy  

