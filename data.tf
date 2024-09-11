# # To generate User policy for CICD project (customize accordingly)
# Attach Managed Policies

resource "aws_iam_user_policy_attachment" "ec2_full_access" {
  user       = aws_iam_user.iam_user.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
}

resource "aws_iam_user_policy_attachment" "eks_cni_policy" {
  user       = aws_iam_user.iam_user.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
}

resource "aws_iam_user_policy_attachment" "eks_cluster_policy" {
  user       = aws_iam_user.iam_user.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
}

resource "aws_iam_user_policy_attachment" "eks_worker_node_policy" {
  user       = aws_iam_user.iam_user.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
}

resource "aws_iam_user_policy_attachment" "s3_full_access" {
  user       = aws_iam_user.iam_user.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
}

resource "aws_iam_user_policy_attachment" "cloudformation_full_access" {
  user       = aws_iam_user.iam_user.name
  policy_arn = "arn:aws:iam::aws:policy/AWSCloudFormationFullAccess"
}

resource "aws_iam_user_policy_attachment" "iam_full_access" {
  user       = aws_iam_user.iam_user.name
  policy_arn = "arn:aws:iam::aws:policy/IAMFullAccess"
}

# Inline policy (modify as needed)
resource "aws_iam_user_policy" "inline_policy" {
  name = var.policy_name
  user = aws_iam_user.iam_user.name

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = ["eks:*"],  # Replace with your actions
        Effect = "Allow",
        Resource = "*",
        Sid = "VisualEditor0"
      },
      # Add more statements as needed
    ]
  })
}
