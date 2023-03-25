output "endpoint" {
  description = "RDS Instance Endpoint"
  value       = aws_db_instance.rds_instance.endpoint
}

output "instance_id" {
  description = "RDS Instance ID"
  value       = aws_db_instance.rds_instance.id
}