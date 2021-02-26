output "cluster_security_group_id" {
  description = "Security group ids attached to the cluster control plane."
  value       = aws_security_group.default.id
}
