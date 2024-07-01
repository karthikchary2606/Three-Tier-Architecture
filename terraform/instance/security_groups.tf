resource "aws_security_group" "web-sg" {
  name = "web-SG"
  ingress {
    from_port   = var.httpd_port
    to_port     = var.httpd_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = [ "::/0" ]
  }
  ingress {
    from_port   = var.https_port
    to_port     = var.https_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = [ "::/0" ]
  }
  ingress {
    from_port   = var.ssh_port
    to_port     = var.ssh_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = [ "::/0" ]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}


resource "aws_security_group" "jenkins-sg" {
  name = "jenkins-SG"
  ingress {
    from_port   = var.httpd_port
    to_port     = var.httpd_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = [ "::/0" ]
  }
  ingress {
    from_port   = var.https_port
    to_port     = var.https_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = [ "::/0" ]
  }
  ingress {
    from_port   = var.ssh_port
    to_port     = var.ssh_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = [ "::/0" ]
  }
  ingress {
    from_port   = var.jenkins_port
    to_port     = var.jenkins_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = [ "::/0" ]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
