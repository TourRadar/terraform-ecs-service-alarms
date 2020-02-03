variable "actions" {
  description = "List of actions what should be executed"
  type        = list(string)
}

variable "ok_actions" {
  description = "List of actions what should be executed"
  type        = list(string)
  default     = []
}

variable "cluster_name" {
  type = string
}

variable "service_name" {
  type = string
}

variable "alarm_prefix" {
  type = string
}

variable "tags" {
  default = {}
}


variable "cpu_utilization_high_enabled" {
  default = true
  type    = bool
}

variable "cpu_utilization_high_checks" {
  type = map(number)
  default = {
    P1 = 90
    P2 = 85
    P3 = 80
  }
}

variable "cpu_utilization_high_evaluation_periods" {
  type    = number
  default = 2
}

variable "cpu_utilization_high_evaluation_period" {
  type    = number
  default = 60
}

variable "cpu_utilization_high_treat_missing_data" {
  type    = string
  default = "notBreaching"
}



variable "memory_utilization_high_enabled" {
  default = true
  type    = bool
}

variable "memory_utilization_high_checks" {
  type = map(number)
  default = {
    P1 = 90
    P2 = 85
    P3 = 80
  }
}

variable "memory_utilization_high_evaluation_periods" {
  type    = number
  default = 2
}

variable "memory_utilization_high_evaluation_period" {
  type    = number
  default = 60
}

variable "memory_utilization_high_treat_missing_data" {
  type    = string
  default = "notBreaching"
}
