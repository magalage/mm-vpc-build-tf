resource "aws_vpc" "mm" {
  cidr_block = "172.16.0.0/22"

  tags = {
    Name = "mm"
  }
}