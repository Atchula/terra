# Create Security Group

resource "aws_security_group" "expense_sg" {

     name = "expense-allow-ssh"
     description = "Created For Expense Project"
     # Vpc -- default
     ingress {

        from_port = 22
        to_port   = 22
        protocol  = "tcp"
        cidr_blocks = ["0.0.0.0/0"]

         }

      tags =  {
           Project = "Expense"
           Env = "Dev"
           CreatedBy = "Hanu"
           Name = "expense-allow-ssh"
       }
}

# Create AWS Instance

resource "aws_instance" "expense-db" {

    ami = "ami-090252cbe067a9e58"
    instance_type = "t2.micro"
    vpc_security_group_ids = [aws_security_group.expense_sg.id]


    tags = {
        Name = "expense-db-east1"
        Project = "Expense"
        Env = "Dev"
        CreatedBy = "Hanu"
    }
}