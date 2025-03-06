
variable "instance_type" {
  description = "Instance type "
  type        = string
  default     = "t2.micro"  # Default instance type
}

variable "vpc_id" {
  description = "Provide the vpc id in which public subnet exist"
  type        = string
}
variable "sg_id" {
  description = "security group id "
  type        = string
}

variable "public_subnet" {
  description = "Name of public subnet in which you want to create bastion"
  type        = string
}

variable "key_name" {
  description = "existing key name for bastion ec2"
  type        = string
}