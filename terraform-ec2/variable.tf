variable "ami" {
  type = map
  default = {
    us-east-1 = "ami-0263e4deb427da90e"
    us-east-2 = "ami-00eeedc4036573771"

  }

}
variable "region"{
    type = string
    default = "us-east-1" 
    }


variable "instance_type" {
    default = "t2.nano"
}

variable "instance_tags" {
    type = list
    default = ["first-tf-instance", "second-tf-instance"]
  
}


variable "access_key"{
    type = string
    default = ""
}


variable "secret_key"{
    type = string
    default = ""
} 