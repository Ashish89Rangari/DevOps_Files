# In root output file we are getting dynamic value from module

output "username" {
  value = module.IAM.username         # Getting user name value  from module
}

output "user_arn" {
  value = module.IAM.user_arn         # Getting user arn value  from module
}

output "secret_key" {
  value     = module.IAM.secret        # Getting user secret key value  from module
  sensitive = true                     # secret key is hidden when sensitive is true
}

output "access_key" {
  value = module.IAM.access_key         # Getting user access key value  from module
}

output "user_password" {
  value     = module.IAM.password       # Getting user password  value  from module
  sensitive = true                      # password is hidden when sensitive is true
}