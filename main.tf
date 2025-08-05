#dev infra module
module "dev-infra" {
  source = "./infra_app"
  env          = "dev"
  bucket_name  = "myapp-bucket-infra"
instance_count = 1
instance_type = "t2.micro"
  ec2_ami_id   = "ami-020cba7c55df1f615" 
  hash_key     = "StudentID"
}

module "prd-infra" {
  source = "./infra_app"
  env          = "prd"
  bucket_name  = "myapp-bucket-prd"
instance_count = 2
instance_type = "t2.medium"
  ec2_ami_id   = "ami-020cba7c55df1f615" 
  hash_key     = "StudentID"
}

module "stg-infra" {
  source = "./infra_app"
  env          = "stg"
  bucket_name  = "myapp-bucket-stg"
instance_count = 1
instance_type = "t2.micro"
  ec2_ami_id   = "ami-020cba7c55df1f615" 
  hash_key     = "StudentID"
}