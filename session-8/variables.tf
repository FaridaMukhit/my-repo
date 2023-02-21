variable "env" {
    type = string
    description = "this is a variable for Environment"
    default = "dev"
}

variable "instance_type" {
    type = string
    description = "this is a variable for instance type"
    default = "t2.micro"
}

variable "ports" {
    type = list(string)
    description = "this is a variable for ports"
    default = ["22", "80", "3306"]
}
