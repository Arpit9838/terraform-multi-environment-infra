variable "env" {
  description = "The environment for my infrastructure"
 type = string
}

variable "bucket_name" {
  description = "The name of the S3 bucket name for the environment"
  type        = string
  
}
variable "instance_count" {
  description = "Number of EC2 instances to create"
  type        = number
}
variable "instance_type" {
  description = "Type of EC2 instance to create"
  type        = string
  
}

variable "ec2_ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string

 }

 variable "hash_key" {
  description = "Hash key for the DynamoDB table"
  type        = string
   
 }