resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh_gopal"
  description = "Allow ssh inbound traffic and all outbound traffic"
  #vpc_id      = aws_vpc.main.id
ingress  {
    description="allow port 22"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
}

egress  {
    description="allow all"
    from_port = 0
    to_port = 0
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
}
  tags = {
    Name = "allow_ssh_gopal"
  }
}

resource "aws_security_group" "allow_http" {
  name        = "allow_80_gopal"
  description = "Allow 80 inbound traffic and all outbound traffic"
  #vpc_id      = aws_vpc.main.id
ingress  {
    description="allow port 80"
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
}

egress  {
    description="allow all"
    from_port = 0
    to_port = 0
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
}
  tags = {
    Name = "allow_http_gopal"
  }
}
