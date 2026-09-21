output "s3_bucket_name" {
  description = "Name of the S3 bucket"
  value       = aws_s3_bucket.demo.bucket
}

output "s3_bucket_arn" {
  description = "ARN of the S3 bucket"
  value       = aws_s3_bucket.demo.arn
}
output "ec2_instance_id" {
  description = "EC2 instance ID"
  value       = aws_instance.web.id
}

output "ec2_public_ip" {
  description = "Public IP of the EC2 instance"
  value       = aws_instance.web.public_ip
}

output "ec2_private_ip" {
  description = "Private IP of the EC2 instance"
  value       = aws_instance.web.private_ip
}
output "ec2_iam_role_name" {
  description = "IAM role attached to EC2"
  value       = aws_iam_role.ec2_role.name
}

output "ec2_instance_profile_name" {
  description = "IAM instance profile attached to EC2"
  value       = aws_iam_instance_profile.ec2_profile.name
}