# Declare VPC module
module "vpc" {
  source  = "git::https://github.com/jdiegobonp/terraform-vpc.git"
  project = "challenge"
  az      = ["us-east-1a", "us-east-1b"]
  cidr    = "10.2.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support = true
  environment = "demo"
  private_subnets = ["10.2.1.0/24", "10.2.2.0/24"]
  public_subnets = ["10.2.11.0/24", "10.2.12.0/24"]
  tags    = { Reason : "Challenge 2", StartDate : "3-23-2022", author: "JD" }
}

# Declare EKS module
module "eks" {
  source  = "git::https://github.com/jdiegobonp/terraform-eks.git"
  project = "challenge"
  ami_type = "AL2_x86_64"
  capacity_type = "ON_DEMAND"
  desired_size = 2
  disk_size = "20"
  eks_version = "1.14"
  instance_types = ["t3a.large"]
  max_size = 3
  min_size = 1
  private_subnets = module.vpc.private_subnets
  public_subnets = module.vpc.public_subnets
  tags    = { Reason : "Challenge 2", StartDate : "3-23-2022", author: "JD" }
}