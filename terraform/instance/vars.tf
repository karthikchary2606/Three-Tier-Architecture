variable "region" {
  default = "us-east-1"
}

variable "httpd_port" {
  default = 80
  type = number
}

variable "https_port" {
  default = 443
  type = number
}

variable "ssh_port" {
  default = 22
  type = number
}

variable "jenkins_port" {
  default = 8080
  type = number
}

variable "instance_type_micro" {
  default = "t2.micro"
}

variable "instance_type_medium" {
  default = "t2.medium"
}

variable "key_name" {}