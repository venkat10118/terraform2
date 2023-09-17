#resource "aws_instance" "my-wish-i-can-decide" {
#    ami = "ami-03265a07780afb" #devops-practice-useast-1
#    instance_type = "t2.micro"
#
#}

resource "aws_instance" "my-wish-i-can-decide" {
    ami = var.ami_id #devops-practice in us-east-1
    instance_type = var.instance_type
    security_groups = [aws_security_group.allow_all.name]


    tags = var.tags
}