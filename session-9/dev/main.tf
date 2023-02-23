module "ec2" {
    source = "../../modules/ec2"
    env = "dev"
    ami = "ami-0aa7d40eeae50c9a9"
    instance_type = "t2.micro"
    sg = [module.sg.sg_ids]
}

module "sg"  {
    source = "../../modules/sg"
    env = "dev"
}
