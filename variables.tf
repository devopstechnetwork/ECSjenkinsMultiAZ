variable "access_key" {
  description = "The AWS access key."
}

variable "secret_key" {
  description = "The AWS secret key."
}

variable "aws_region" {
  description = "The AWS region to create resources in."
  default = "us-east-1"
}

variable "max_subnet_count" {
  default     = 0
  description = "Sets the maximum amount of subnets to deploy.  0 will deploy a subnet for every availablility zone within the region"
}

variable "vpc_id" {
  type        = "string"
  description = "VPC ID of the existing VPC "
}
variable "availability_zone" {
  description = "The availability zone"
  default = ["us-east-1a", "us-east-1b"]
}

variable "ecs_cluster_name" {
  description = "The name of the Amazon ECS cluster."
  default = "jenkins"
}

variable "amis" {
  description = "Which AMI to spawn. Defaults to the AWS ECS optimized images."
  default = {
    us-east-1 = "ami-d61027ad"
    us-west-1 = "ami-514e6431"
    us-west-2 = "ami-c6f81abe"
    eu-west-1 = "ami-4e6ffe3d"
    eu-central-1 = "ami-b0cc23df"
    ap-northeast-1 = "ami-095dbf68"
    ap-southeast-1 = "ami-cf03d2ac"
    ap-southeast-2 = "ami-697a540a"
  }
}

variable "instance_type" {
  default = "t2.medium"
}

variable "key_name" {
  default = "devops-tf"
  description = "SSH key name in your AWS account for AWS instances."
}

variable "min_instance_size" {
  default = 1
  description = "Minimum number of EC2 instances."
}

variable "max_instance_size" {
  default = 2
  description = "Maximum number of EC2 instances."
}

variable "desired_instance_capacity" {
  default = 1
  description = "Desired number of EC2 instances."
}

variable "desired_service_count" {
  default = 1
  description = "Desired number of ECS services."
}

variable "s3_bucket" {
  default = "mycompany-jenkins"
  description = "S3 bucket where remote state and Jenkins data will be stored."
}

variable "restore_backup" {
  default = false
  description = "Whether or not to restore Jenkins backup."
}

variable "jenkins_repository_url" {
  default = "jenkins"
  description = "ECR Repository for Jenkins."
}
