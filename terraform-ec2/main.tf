resource "aws_instance" "ec2" {
  ami           = lookup(var.ami, var.region)
  instance_type = var.instance_type
  count         = "2"

  tags = {
    Name = element(var.instance_tags, count.index)
  }
}