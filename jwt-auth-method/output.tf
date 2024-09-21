output "role_name" {
  value = vault_jwt_auth_backend_role.tfc_admin_role.role_name
}
output "openid_claims" {
    value = vault_jwt_auth_backend.tfc_jwt.bound_claims
}