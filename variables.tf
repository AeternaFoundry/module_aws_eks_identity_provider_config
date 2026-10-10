variable "eks_identity_provider_configs" {
  description = <<EOT
Map of eks_identity_provider_configs, attributes below
Required:
    - cluster_name
    - oidc (block):
        - client_id (required)
        - groups_claim (optional)
        - groups_prefix (optional)
        - identity_provider_config_name (required)
        - issuer_url (required)
        - required_claims (optional)
        - username_claim (optional)
        - username_prefix (optional)
Optional:
    - region
    - tags
    - tags_all
EOT

  type = map(object({
    cluster_name = string
    region       = optional(string)
    tags         = optional(map(string))
    tags_all     = optional(map(string))
    oidc = object({
      client_id                     = string
      groups_claim                  = optional(string)
      groups_prefix                 = optional(string)
      identity_provider_config_name = string
      issuer_url                    = string
      required_claims               = optional(map(string))
      username_claim                = optional(string)
      username_prefix               = optional(string)
    })
  }))
  # Note: 9 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

