

resource "aws_vpc" "default" {
    cidr_block = "10.30.0.0/16"
    enable_dns_hostnames = true
    tags = {
        Name = "devops-vpc"
	Owner = "chenchireddy"
	environment = "devops"
        deployedby = "terraform"
        costcenter =8080
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
