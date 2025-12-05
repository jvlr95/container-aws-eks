variable "project_name" {
  description = "Project Name"
  type        = string
}

variable "region" {
  description = "Resource region"
  type        = string
}

variable "k8s_version" {
  description = "Kuberentes Version"
  type        = string
}

variable "ssm_vpc" {
  description = "SSM ID sotred to VPC ID where the project will be created"
  type        = string
}

variable "ssm_public_subnets" {
  description = "SSM ID sotred to Public Subnet ID where the project will be created"
  type        = list(string)
}

variable "ssm_private_subnets" {
  description = "SSM ID sotred to Private Subnet ID where the project will be created"
  type        = list(string)
}

variable "ssm_pod_subnets" {
  description = "SSM ID sotred to Pod Subnet ID where the project will be created"
  type        = list(string)
}

variable "auto_scale_options" {
  description = "Config autoscale"
  type = object({
    min     = number
    max     = number
    desired = number
  })
}

variable "nodes_instances_sizes" {
  description = "Node instance size"
  type        = list(string)
}

variable "karpenter_capacity" {
  type = list(object({
    name               = string
    workload           = string
    ami_family         = string
    ami_ssm            = string
    instance_family    = list(string)
    instance_sizes     = list(string)
    capacity_type      = list(string)
    availability_zones = list(string)
  }))
}