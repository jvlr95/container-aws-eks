project_name = "personal-eks-cluster"
region       = "us-east-1"

k8s_version = "1.34"

auto_scale_options = {
  min     = 1
  max     = 3
  desired = 1
}

nodes_instances_sizes = [
  "t3.micro",
  "t3.small"
]

ssm_vpc = "/personal-vpc/vpc/id"

ssm_public_subnets = [
  "/personal-vpc/subnets/public/us-east-1a/personal-vpc-public-1a",
  "/personal-vpc/subnets/public/us-east-1b/personal-vpc-public-1b",
  "/personal-vpc/subnets/public/us-east-1c/personal-vpc-public-1c",
]

ssm_private_subnets = [
  "/personal-vpc/subnets/private/us-east-1a/personal-vpc-private-1a",
  "/personal-vpc/subnets/private/us-east-1b/personal-vpc-private-1b",
  "/personal-vpc/subnets/private/us-east-1c/personal-vpc-private-1c",
]

ssm_pod_subnets = [
  "/personal-vpc/subnets/private/us-east-1a/eks-pods-1a",
  "/personal-vpc/subnets/private/us-east-1b/eks-pods-1b",
  "/personal-vpc/subnets/private/us-east-1c/eks-pods-1c",
]