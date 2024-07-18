output "asg_name" {
  value       = aws_autoscaling_group.autoscaling_group.name
  description = "This is the name for the autoscaling group generated by the module"
}

output "cluster_size" {
  value       = aws_autoscaling_group.autoscaling_group.desired_capacity
  description = "This is the desired size of the consul cluster in the autoscaling group"
}

output "launch_template_id" {
  value       = aws_launch_template.launch_template.id
  description = "This is the id of the launch_template used to bootstrap the cluster instances"
}

output "iam_role_arn" {
  value       = element(concat(aws_iam_role.instance_role.*.arn, [""]), 0)
  description = "This is the arn of instance role if enable_iam_setup variable is set to true"
}

output "iam_role_id" {
  value       = element(concat(aws_iam_role.instance_role.*.id, [""]), 0)
  description = "This is the id of instance role if enable_iam_setup variable is set to true"
}

output "security_group_id" {
  value       = aws_security_group.lc_security_group.id
  description = "This is the id of security group that governs ingress and egress for the cluster instances"
}

output "cluster_tag_key" {
  value       = var.cluster_tag_key
  description = "This is the tag key used to allow the consul servers to autojoin"
}

output "cluster_tag_value" {
  value       = var.cluster_tag_value
  description = "This is the tag value used to allow the consul servers to autojoin"
}

