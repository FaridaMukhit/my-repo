variable "env" {
    type = string
    description = "this is a variable for Environment"
    default = "dev"
}

variable "ami" {
    type = string
    description = "this is a variable for ami"
    default = "ami-0aa7d40eeae50c9a9"
}

variable "instance_type" {
    type = string
    description = "this is a variable for instance type"
    default = "t2.micro"
}

