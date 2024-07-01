# outputs.tf
output "credentials_csv" {
  value = <<EOT
UserName,AccessKeyId,SecretAccessKey
$${aws_iam_user.example_user.name},$${aws_iam_access_key.example_user_key.id},$${aws_iam_access_key.example_user_key.secret}
EOT
  sensitive = true
}

resource "null_resource" "write_credentials_csv" {
  provisioner "local-exec" {
    command = <<EOT
echo "UserName,AccessKeyId,SecretAccessKey" > test_user_credentials.csv
echo "$${aws_iam_user.example_user.name},$${aws_iam_access_key.example_user_key.id},$${aws_iam_access_key.example_user_key.secret}" >> credentials.csv
EOT
  }
}