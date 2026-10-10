resource "aws_eks_identity_provider_config" "eks_identity_provider_configs" {
  for_each = var.eks_identity_provider_configs

  cluster_name = each.value.cluster_name
  region       = each.value.region
  tags         = each.value.tags
  tags_all     = each.value.tags_all

  oidc {
    client_id                     = each.value.oidc.client_id
    groups_claim                  = each.value.oidc.groups_claim
    groups_prefix                 = each.value.oidc.groups_prefix
    identity_provider_config_name = each.value.oidc.identity_provider_config_name
    issuer_url                    = each.value.oidc.issuer_url
    required_claims               = each.value.oidc.required_claims
    username_claim                = each.value.oidc.username_claim
    username_prefix               = each.value.oidc.username_prefix
  }
}

