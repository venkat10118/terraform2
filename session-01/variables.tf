variable "ami_id"{
    type = string #datatype
    default = "ami-03265a07780afb"
}

variable "instance_type" {
    #type = string
    default = "t2.micro"
}

variable "sg_name" {
    default = "allow-all"
}

variable "sg_cidr" {
  type = list
  default = ["0.0.0.0/0"] #list
}

variable "tags" {
    type = map
    default = {
        Name = "MongoDB"
          Environment = "DEV"
          Terraform = "True"
          Project = "Roboshop"
          Component = "MongoDB"
    }

}