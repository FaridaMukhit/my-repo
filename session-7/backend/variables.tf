variable "env" {
    type = string
    description = "this is a variable for Environment"
    default = "dev"
}

variable "team" {
    type = string
    description = "this is a variable for team"
    default = "devops"
}

variable "app" {
    type = string
    description = "this is a variable for application"
    default = "elk"
}

variable "index" {
    type = string
    description = "this is a variable for index"
    default = "0"
}

variable "managed_by" {
    type = string
    description = "this is a variable for index"
    default = "terraform"
}

variable "owner" {
    type = string
    description = "this is a variable for index"
    default = "farida"
}