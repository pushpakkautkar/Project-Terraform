# Create IAM User
provider "aws" {
  region = "ap-south-1"
}

resource "aws_iam_user" "user" {
  name = "tf-user"
}

# Attach Admin Policy (easy for practice)
resource "aws_iam_user_policy_attachment" "attach" {
  user       = aws_iam_user.user.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess-Amplify"
}

# Create Access Key
resource "aws_iam_access_key" "key" {
  user = aws_iam_user.user.name
}

# Output credentials
output "access_key" {
  value = aws_iam_access_key.key.id
}

output "secret_key" {
  value     = aws_iam_access_key.key.secret
  sensitive = true
}