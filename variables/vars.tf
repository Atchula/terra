variable "port" {
    type = number
    default = 22
    description = "Port Number"
}

variable "protocol" {
    type = string
    default = "tcp"
    description = "protocol"
}

variable "cidr" {
    type = list(string)
    default = ["0.0.0.0/0"]
    description = "cidr"
}

variable "tags" {
    type = map
    default = {
         Name = "expense-allow-ssh"
         Project = "Expense"
         Environment = "Dev"
         CreatedBy = "Hanu"
      }
    description = "tags"
}

variable "allports" {
    type = number
    default = 0
    description = "allports"
}

variable "desc" {
    type = string 
    default = "Created For Expense"
    description = "Project Desc"
}

variable "ami" {
    type = string 
    default = "ami-0bb84b8ffd87024d8"
    description = "Image Id"
}
variable "instance_type" {
    type = string
    default = "t2.micro"
    description = "Instance Type"
}

variable "key" {
    type = string
    default = "Terra"
    description = "Key Pair"
}