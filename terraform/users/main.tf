# main.tf
resource "aws_iam_user" "example_user" {
  name = "test"
}

resource "aws_iam_policy_attachment" "example_user_policy_attachment" {
  name       = "test_user_policy_attachment"
  users      = [aws_iam_user.example_user.name]
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

resource "aws_iam_access_key" "example_user_key" {
  user = aws_iam_user.example_user.name
}

output "access_key_id" {
  value = aws_iam_access_key.example_user_key.id
}

output "secret_access_key" {
  value     = aws_iam_access_key.example_user_key.secret
  sensitive = true
}