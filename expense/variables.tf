variable "instance_name" {
    type = list
    default = ["db","backend","frontend"]
}

variable "image_id"{
    type = string
    default = "ami-09c813fb71547fc4f"
    description = "RHEL-9 image id" 
}

variable "instance_type" {
     type = string
     default = "t3.micro"
}

variable "common_tags"{
    default = {
        project = "Expense"
        Environment = "Dev"
        Terraform = "true"
    }
}

variable "sg_name"{
    default = "allow_ssh"
}

variable "sg_description" {
    default = "allowing SSH access"
}

variable "ssh_port"{
    default = 22
}

variable "protocol"{
    default = "tcp"
}

variable "allowed_cidr"{
    type = list(string)
    default = ["0.0.0.0/0"]
}