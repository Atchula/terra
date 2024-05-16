resource "aws_security_group" "expense_sg" {
      description = var.desc
      ingress {
         from_port = var.port
         to_port = var.port
         protocol = var.protocol
         cidr_blocks = var.cidr
      }

      egress {
         from_port = var.allports
         to_port   = var.allports
         protocol = var.protocol
         cidr_blocks = var.cidr
      }

      tags = var.tags
}



resource "aws_instance" "expense_db" {
    ami = var.ami
    instance_type = var.instance_type
    vpc_security_group_ids = [aws_security_group.expense_sg.id]
    key_name = var.key

    tags = merge({
        Name = "Expense-DB"
        
    },var.tags)

}

