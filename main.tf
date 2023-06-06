# specify the cloud provider and the region
provider "aws" {
    region = "us-east-1"
    # aws access key and secret key taken from .aws
    profile = "default"
}

resource "aws_instance" "my-first-server" {
    ami = "ami-053b0d53c279acc90"
    instance_type = "t2.micro"
    tags = {
	Name = "ubuntu"
    }
}
