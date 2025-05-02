variable "port" {
    default = [22, 80]
    type = list(number)
}

variable "instance_type" {
    default = "t2.micro"
    type = string
}

variable "region" {
    default = "us-east-1"
    type = string
}