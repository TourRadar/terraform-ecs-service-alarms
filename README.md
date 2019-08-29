# terraform-ecs-service-alarms
Terraform module to automate creating ecs service alarms

## Example usage
```terraform
module "terraform-ecs-service-alarms" {
  source = "github.com/TourRadar/terraform-ecs-service-alarms"
  service_name = "your service"
  cluster_name = "your cluster"
  actions      = ["snsarn etc"]
  alarm_prefix = "MyAlarmPrefix"
  tags = {
    Project = "SomeProject"
  }
}
```
