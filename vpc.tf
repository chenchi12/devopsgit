
resource "aws_vpc" "default" {
    cidr_block = "10.20.0.0/16"
    enable_dns_hostnames = true
    tags = {
        Name = "devops-vpc"
	Owner = "chenchireddy"
	environment = "devops"
    deployedby = "terraform"
    }
}

resource "aws_internet_gateway" "default" {
    vpc_id = "${aws_vpc.default.id}"
	tags = {
        Name = "devops-igw"
        Owner = "chenchireddy"
	    environment = "devops"
        deployedby = "terraform" 
    }
}