resource "aws_iam_role" "github_actions" {
  name = "terraform-github-actions-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"

    Statement = [
      {
        Effect = "Allow"

        Principal = {
          Federated = aws_iam_openid_connect_provider.github.arn
        }

        Action = "sts:AssumeRoleWithWebIdentity"

        Condition = {
          StringEquals = {
            "token.actions.githubusercontent.com:aud" = "sts.amazonaws.com"
            "token.actions.githubusercontent.com:sub" = "repo:Arpit20261202@319696986/terraform-aws-devops-project@1379560845:ref:refs/heads/main"
          }
        }
      }
    ]
  })

  tags = {
    Name      = "terraform-github-actions-role"
    ManagedBy = "Terraform"
  }
}
