resource "aws_security_group" "accessories-security-group" {

  ingress {
    from_port = 22
    to_port   = 22
    protocol  = "tcp"
    cidr_blocks  = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 8080
    to_port   = 8080
    protocol  = "tcp"
    cidr_blocks  = ["0.0.0.0/0"]
  }

    ingress {
    from_port = 3000
    to_port   = 3000
    protocol  = "tcp"
    cidr_blocks  = ["0.0.0.0/0"]
  }

  egress  {
    from_port = 0
    to_port   = 0
    protocol  = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "tls_private_key" "pk" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "acc-key" {
  key_name = "acc-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDFPdCEd56Rp3TPYaAuhepDgwQ8R/U2hIIcdyyZzbNySV4Hbo04HskcROyMBaJZECxA4TMc3g1EQ9J59WLxQ+iAIxYlcuDcwKFkNRkvh3562F59Akgizo8T80oF5xgDankKfs781vo6xzGRWrFQSKTJqsp4Hnzfe/JAsl2ccm5+8I8r0XofTjeLot4GVhuiKRWtmGp82DTGRJgyUU0rMIjyJsRWOVZdB843Q5wiA9B2BKCFwHniXBZ2Ql/IBjRlpTKmzTwaomILdXbPUfttmKB/MUPXheCSrJEZAEA4SIj+NqCc912WKqkZgEKTjFRl24Hccdl+fW8+VTOJdy3COhoMbDVxq2uCdqkgxm1hI1KyylWFP+3fduMklLXuBEgbVRRF3UywVIJIMZjDY3OP4lehTh4ukP5uwoUgbmRMVNwZBp2G42t/xpw+tY/aePGqnMIyYQZW2fIPBhB1ReX6B61I2hdmbKlUz/YT3gQrqb0YyEgTieVFhSzoy5EYLb7hECmRGFh719KybDrFo8tLtlkdEDz/Uv7cUQ+jSDRWq2vAVmgrR3DeAbAVdGYy7JdFswSi2u54h79p2XhLCyPrd7q369jIcaE4SIMgztR8RU8lxLekvxRlmprU8PnLW02jEX3OEOWcQcaKQhCwgTjiBKWFD2vHunOWqyZ8+d6zD2otAQ==\n"

  provisioner "local-exec" {
    command = "echo '${tls_private_key.pk.private_key_pem}' > /home/ahmedmongey/projects/Accessories-website/terraform/acc-key.pem && chmod 400 acc-key.pem"
  }
}