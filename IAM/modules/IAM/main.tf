# To Create IAM User

resource "aws_iam_user" "iam_user" {
  name = var.username                      # Passing the user name through variables (see the variables.tf file)
}

# To generate the access key to IAM User and providing Console Access to user (generate secret access key)

resource "aws_iam_access_key" "credentials" {
  user = aws_iam_user.iam_user.name            # Passing the username dynamically 
}

# Console Access To user , login URL, User name , Password will be generated 

resource "aws_iam_user_login_profile" "credentials" {
  user                    = aws_iam_user.iam_user.name     # Passing the username dynamically 
  password_reset_required = true                          # Here when user will login first time he will have to change the password
}

# To generate User policy

resource "aws_iam_user_policy" "s3_policy" {
  name = var.policy_name                     # Passing policy name through variables (see the variables.tf file)
  user = aws_iam_user.iam_user.name          # Passing the username dynamically 
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "s3:*",                            # S3 Full access
          "iam:ChangePassword",              # IAM change password access
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}