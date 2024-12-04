variable "regionDefault" {
  default = "us-east-1"
}

variable "projectName" {
  default = "fast-food-project2"
}

variable "labRole" {
  default = "arn:aws:iam::211125428015:role/LabRole" # do meu user
}

variable "accessConfig" {
  default = "API_AND_CONFIG_MAP"
}

variable "nodeGroup" {
  default = "fast-food-node"
}

variable "instanceType" {
  default = "t3.medium"
}

variable "principalArn" {
  default = "arn:aws:iam::750400446769:role/voclabs"
}

variable "policyArn" {
  default = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSClusterAdminPolicy"
}