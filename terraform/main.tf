resource "aws_instance" "jenkins-server" {
  ami           = "ami-0b5eea76982371e91"
  instance_type = "t2.micro"
  key_name      = "acc-key"
  security_groups = ["${aws_security_group.accessories-security-group.name}"]

  tags  = {
    Name  = "jenkins server"
  }
}

resource "aws_instance" "ansible-server" {
  ami           = "ami-0b5eea76982371e91"
  instance_type = "t2.micro"
  key_name      = "acc-key"
  security_groups = ["${aws_security_group.accessories-security-group.name}"]

  tags  = {
    Name  = "ansible server"
  }
}

resource "aws_instance" "webapp-server" {
  ami           = "ami-0b5eea76982371e91"
  instance_type = "t2.medium"
  key_name      = "acc-key"
  security_groups = ["${aws_security_group.accessories-security-group.name}"]

  tags  = {
    Name  = "webapp server"
  }
}