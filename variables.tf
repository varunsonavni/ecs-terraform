variable "aws_region" {
  default     = "us-east-1"
  description = "aws region where our resources going to create choose"
  #replace the region as suits for your requirement
}

variable "vpc_name" {
  type = string
  default = "my-vpc"
}
variable "ecs_cluster_name" {
  type = string
  default = "my-app-cluster"
}

variable "ecs_task_definition_name" {
  type = string
  default = "my-app-task-definition"
}

variable "ecs_network_mode" {
  type = string
  default = "awsvpc"
}

variable "ecs_task_service_name" {
  type = string
  default = "my-app-service"
}

variable "aws_alb_name" {
  type = string
  default = "myapp-load-balancer"
}


variable "aws_alb_target_name" {
  type = string
  default = "myapp-target-group"
}

variable "aws_alb_target_port" {
  type = number
  default = 80
}

variable "aws_alb_target_port_protocol" {
  type = string
  default = "HTTP"
}

variable "target_type" {
  type = string
  default = "ip"
}

variable "max_capacity" {
  type = number
  default = 4
}

variable "min_capacity" {
  type = number
  default = 2
}

variable "ecs_task_execution_role" {
  default     = "myECcsTaskExecutionRole"
  description = "ECS task execution role name"
}

variable "app_image" {
  default     = "nginx:latest"
  description = "docker image to run in this ECS cluster"
}

variable "app_port" {
  default     = "80"
  description = "portexposed on the docker image"
}

variable "app_count" {
  default     = "2" #choose 2 bcz i have choosen 2 AZ
  description = "numer of docker containers to run"
}

variable "health_check_path" {
  default = "/"
}

variable "fargate_cpu" {
  default     = "1024"
  description = "fargate instacne CPU units to provision,my requirent 1 vcpu so gave 1024"
}

variable "fargate_memory" {
  default     = "2048"
  description = "Fargate instance memory to provision (in MiB) not MB"
}


variable "vpc_cidr" {
  type    = string
  default = "20.0.0.0/16"
}

variable "vpc_private_subnets" {
  type    = list(string)
  default = ["20.0.1.0/24", "20.0.2.0/24", "20.0.3.0/24"]

}
variable "vpc_public_subnets" {
  type    = list(string)
  default = ["20.0.4.0/24", "20.0.5.0/24", "20.0.6.0/24"]
}
