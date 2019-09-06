locals {
  alarmDimensions = {
    ServiceName = var.service_name
    ClusterName = var.cluster_name
  }
}


resource "aws_cloudwatch_metric_alarm" "cpu_utilization_high" {
  for_each            = var.cpu_utilization_high_checks
  alarm_name          = "${var.alarm_prefix}: ${each.key} ECS service cpu utilization is too high"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = var.cpu_utilization_high_evaluation_periods
  threshold           = each.value
  metric_name         = "CPUUtilization"
  namespace           = "AWS/ECS"
  period              = var.cpu_utilization_high_evaluation_period
  statistic           = "Average"
  alarm_description   = "Priority: ${each.key}  CPU usage for ecs service is too high. Please check service"
  treat_missing_data  = var.cpu_utilization_high_treat_missing_data
  alarm_actions       = var.actions
  ok_actions          = var.ok_actions
  tags                = var.tags
  dimensions          = local.alarmDimensions
}

resource "aws_cloudwatch_metric_alarm" "memory_utilization_high" {
  for_each            = var.memory_utilization_high_checks
  alarm_name          = "${var.alarm_prefix}: ${each.key} ECS service memory utilization is too high"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = var.memory_utilization_high_evaluation_periods
  threshold           = each.value
  metric_name         = "CPUUtilization"
  namespace           = "AWS/ECS"
  period              = var.memory_utilization_high_evaluation_period
  statistic           = "Average"
  alarm_description   = "Priority: ${each.key}  memory usage for ecs service is too high. Please check service"
  treat_missing_data  = var.memory_utilization_high_treat_missing_data
  alarm_actions       = var.actions
  ok_actions          = var.ok_actions
  tags                = var.tags
  dimensions          = local.alarmDimensions
}



