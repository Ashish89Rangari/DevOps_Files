
# Calling the module

module "IAM" {
  source      = "./modules/IAM"     # Calling module path
  username    = var.username        # Passing the username variable value name (if we will not pass it will take default value,value is in terraform.tfvars file)
  policy_name = var.policy_name     # passing the policy name variable value   (if we will not pass it will take default value,value is in terraform.tfvars file)
}