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
    disk_size          = number
  }))
}

variable "addon_cni_version" {
  type        = string
  default     = "v1.20.4-eksbuild.2"
  description = "CNI Addon Version"
}

variable "addon_coredns_version" {
  type        = string
  default     = "v1.12.3-eksbuild.1"
  description = "CoreDNS Version"
}

variable "addon_kubeproxy_version" {
  type        = string
  default     = "v1.34.0-eksbuild.2"
  description = "Kube-Proxy Version"
}

variable "addon_pod_identity_version" {
  type        = string
  default     = "v1.3.10-eksbuild.1"
  description = "Pod Identity Version"
}

variable "addon_metrics_server" {
  type        = string
  default     = "v0.8.0-eksbuild.5"
  description = "Metrics Server Version"
}

# variable "addon_ebs_csi_version" {
#   type        = string
#   default     = "v1.39.0-eksbuild.1"
#   description = "Versão do Addon do EBS CSI"
# }

# variable "addon_efs_csi_version" {
#   type        = string
#   default     = "v2.1.4-eksbuild.1"
#   description = "Versão do Addon do EFS CSI"

# }

# variable "addon_s3_csi_version" {
#   type        = string
#   default     = "v1.11.0-eksbuild.1"
#   description = "Versão do Addon do S3 CSI"
