module "ec2" {
    source = "github.com/FaridaMukhit/my-repo/modules/ec2?ref=v1.0.0"
    env = "dev"
    ami = "ami-0aa7d40eeae50c9a9"
    instance_type = "t2.micro"
}