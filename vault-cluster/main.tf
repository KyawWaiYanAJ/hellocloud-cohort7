resource "hcp_hvn" "vault_hvn" {
  hvn_id         = "corhort7"
  cloud_provider = var.cloud_provider
  region         = var.region
  cidr_block     = var.cidr_block
}

resource "hcp_vault_cluster" "vault_cluser" {
  cluster_id = "corhort7-vault-cluster"
  hvn_id     = hcp_hvn.vault_hvn.hvn_id
  tier       = "starter_small"
  public_endpoint = true
  lifecycle {
    prevent_destroy = false
  }
}