resource "aws_instance" "my_ec2" {
  ami           = var.ami
  instance_type = var.instance_type

user_data = <<-EOF
           #!/bin/bash
           yum update -y
           yum install docker -y
           service docker start
           docker run -d -p 80:80 nginx
           EOF

 tags = {
  Name = "MyTerraformEC2"
 }
}
