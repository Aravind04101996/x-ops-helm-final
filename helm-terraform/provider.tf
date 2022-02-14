provider "helm" {
  kubernetes {
    host                   = data.aws_ssm_parameter.clusterendpoint.value
    cluster_ca_certificate = data.aws_ssm_parameter.clustercacert.value
    exec {
      api_version           = "client.authentication.k8s.io/v1alpha1"
      args                  = ["eks", "get-token", "--cluster-name", data.aws_ssm_parameter.clustername.value]
      command               = "aws"
    }
  }
}

provider "aws" {
  region  = "us-east-2"
  profile = "default"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "< 4.0"
    }
  }
}