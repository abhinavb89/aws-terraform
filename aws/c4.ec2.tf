resource "aws_instance" "web" {
  ami           = "ami-04e5276ebb8451442" #it is of amazon linux
  instance_type = "t3.micro"
  user_data = file("${path.module}/app/aap1-install.sh")
  vpc_security_group_ids = [aws_security_group.allow_ssh.id,aws_security_group.allow_http.id]
  tags = {
    Name = "ec2 instance gopald"
  }
  lifecycle {
    ignore_changes = [ 
        user_data,
        tags,
        instance_type,
        
     ]
  }
}