resource "aws_subnet" "private-us-east-1a" {
    vpc_id              = aws_vpc.mm.id
    cidr_block          = "172.16.0.0/24"
    availability_zone   = "us-east-1a"

    tags = {
        "Name"          = "private-us-east-1a"
        "kubernetes.io/role/internal-elb"   = "1"
        "kubernetes.io/cluster/mm"        = "owned"

    }
}

resource "aws_subnet" "private-us-east-1b" {
    vpc_id              = aws_vpc.mm.id
    cidr_block          = "172.16.1.0/24"
    availability_zone   = "us-east-1b"

    tags = {
        "Name"                              = "private-us-east-1b"
        "kubernetes.io/role/internal-elb"   = "1"
        "kubernetes.io/cluster/mm"        = "owned"

    }
}

resource "aws_subnet" "public-us-east-1a" {
    vpc_id              = aws_vpc.mm.id
    cidr_block          = "172.16.2.0/24"
    availability_zone   = "us-east-1a"
    map_public_ip_on_launch = true

    tags = {
        "Name"          = "public-us-east-1a"
        "kubernetes.io/role/elb"        = "1"
        "kubernetes.io/cluster/mm"    = "owned"
    }    
}

resource "aws_subnet" "public-us-east-1b" {
    vpc_id              = aws_vpc.mm.id
    cidr_block          = "172.16.3.0/24"
    availability_zone   = "us-east-1b"
    map_public_ip_on_launch = true

    tags = {
        "Name"                          = "public-us-east-1b"
        "kubernetes.io/role/elb"        = "1"
        "kubernetes.io/cluster/mm"      = "owned"        
    }    
}