resource "aws_key_pair" "ddias" {
  key_name   = "ddias"
  public_key = file("~/.ssh/ddiasaws.pem.pub")
}

resource "aws_instance" "web" {
  ami             = data.aws_ami.amazon-linux-2.id
  instance_type   = "t3a.small"
  key_name        = aws_key_pair.ddias.key_name
  security_groups = [aws_security_group.web.name]
  user_data       = file("./user_data/web.sh")
  tags = {
    Name = "HelloAWS"
  }
}
