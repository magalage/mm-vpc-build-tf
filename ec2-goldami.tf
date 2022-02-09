# module "ec2_instance" {
#   source  = "terraform-aws-modules/ec2-instance/aws"
#   version = "~> 3.0"

#   name = "gold-eks-ami"

#   ami                    = "ami-0a0d313506d35fec9"
#   instance_type          = "t2.medium"
#   key_name               = "mm-test-kp"
#   monitoring             = true
#   subnet_id              = "subnet-04d8d990319ee7bfe"
#   iam_instance_profile   = "AmazonSSMRoleForInstancesQuickSetup"

#   tags = {
#     Terraform   = "true"
#     Environment = "dev"
#   }
# }
