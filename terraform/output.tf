# outputs.tf
data "template_file" "credentials_csv" {
  template = <<EOT
UserName,AccessKeyId,SecretAccessKey
$${aws_iam_user.example_user.name},$${aws_iam_access_key.example_user_key.id},$${aws_iam_access_key.example_user_key.secret}
EOT
}

resource "local_file" "credentials_csv" {
  content  = data.template_file.credentials_csv.rendered
  filename = "$${path.module}/credentials.csv"
}