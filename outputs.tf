output "eks_identity_provider_configs_id" {
  description = "Map of id values across all eks_identity_provider_configs, keyed the same as var.eks_identity_provider_configs"
  value       = { for k, v in aws_eks_identity_provider_config.eks_identity_provider_configs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "eks_identity_provider_configs_arn" {
  description = "Map of arn values across all eks_identity_provider_configs, keyed the same as var.eks_identity_provider_configs"
  value       = { for k, v in aws_eks_identity_provider_config.eks_identity_provider_configs : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "eks_identity_provider_configs_cluster_name" {
  description = "Map of cluster_name values across all eks_identity_provider_configs, keyed the same as var.eks_identity_provider_configs"
  value       = { for k, v in aws_eks_identity_provider_config.eks_identity_provider_configs : k => v.cluster_name if v.cluster_name != null && length(v.cluster_name) > 0 }
}
output "eks_identity_provider_configs_identity_provider_config_name" {
  description = "Map of identity_provider_config_name values across all eks_identity_provider_configs, keyed the same as var.eks_identity_provider_configs"
  value       = { for k, v in aws_eks_identity_provider_config.eks_identity_provider_configs : k => v.identity_provider_config_name if v.identity_provider_config_name != null && length(v.identity_provider_config_name) > 0 }
}
output "eks_identity_provider_configs_oidc" {
  description = "Map of oidc values across all eks_identity_provider_configs, keyed the same as var.eks_identity_provider_configs"
  value       = { for k, v in aws_eks_identity_provider_config.eks_identity_provider_configs : k => one(v.oidc) if v.oidc != null && length(v.oidc) > 0 }
}
output "eks_identity_provider_configs_region" {
  description = "Map of region values across all eks_identity_provider_configs, keyed the same as var.eks_identity_provider_configs"
  value       = { for k, v in aws_eks_identity_provider_config.eks_identity_provider_configs : k => v.region if v.region != null && length(v.region) > 0 }
}
output "eks_identity_provider_configs_status" {
  description = "Map of status values across all eks_identity_provider_configs, keyed the same as var.eks_identity_provider_configs"
  value       = { for k, v in aws_eks_identity_provider_config.eks_identity_provider_configs : k => v.status if v.status != null && length(v.status) > 0 }
}
output "eks_identity_provider_configs_tags" {
  description = "Map of tags values across all eks_identity_provider_configs, keyed the same as var.eks_identity_provider_configs"
  value       = { for k, v in aws_eks_identity_provider_config.eks_identity_provider_configs : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "eks_identity_provider_configs_tags_all" {
  description = "Map of tags_all values across all eks_identity_provider_configs, keyed the same as var.eks_identity_provider_configs"
  value       = { for k, v in aws_eks_identity_provider_config.eks_identity_provider_configs : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

