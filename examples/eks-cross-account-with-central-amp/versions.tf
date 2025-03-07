terraform {
  required_version = ">= 1.3.9"

  required_providers {
    aws = {
      source                = "hashicorp/aws"
      version               = ">= 4.55.0"
      configuration_aliases = [aws.eks_cluster_one, aws.eks_cluster_two, aws.central_monitoring]
    }
    kubernetes = {
      source                = "hashicorp/kubernetes"
      version               = ">= 2.18.0"
      configuration_aliases = [kubernetes.eks_cluster_one, kubernetes.eks_cluster_two]
    }
    helm = {
      source                = "hashicorp/helm"
      version               = ">= 2.9.0"
      configuration_aliases = [helm.eks_cluster_one, helm.eks_cluster_two]
    }
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = ">= 1.14"
    }
  }
}
