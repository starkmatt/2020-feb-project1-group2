resource aws_instance "da_wordpress" {
  ami                    = "ami-08fdde86b93accf1c"
  availability_zone      = "ap-southeast-2a"
  instance_type          = "t1.micro"
  security_groups        = [aws_security_group..name]
  iam_instance_profile   = aws_iam_role..name
  key_name               = ""

  tags = {
    Name = ""
  }
}
