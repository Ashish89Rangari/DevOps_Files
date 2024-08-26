# In Output file Printing user name

output "username" {
  value = aws_iam_user_login_profile.credentials.id    # Dynamically printing user name  (Attribute reference -id)
}
# In Output file Printing user ARN (amazon resource name )

output "user_arn" {
  value = aws_iam_user.iam_user.arn                  # Dynamically printing user arn  (Attribute reference -arn)
}
# In Output file Printing user password

output "password" {
  value     = aws_iam_user_login_profile.credentials.password      # Dynamically printing user password  (Attribute reference -password)
  sensitive = true                                                 # As password is sensitive that is why TRUE (can't see)
}

# In Output file Printing user secret key

output "secret" {
  value     = aws_iam_access_key.credentials.secret          # Dynamically printing user secret key  (Attribute reference -secret)
  sensitive = true                                           # As secret key  is sensitive that is why TRUE (can't see)
}

# In Output file Printing user access key 

output "access_key" {
  value = aws_iam_access_key.credentials.id                   # Dynamically printing user access key (Attribute reference -id)
}