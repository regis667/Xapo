resource "aws_ecs_task_definition" "xapo_task" {
  family                   = "xapo-task"
  container_definitions    = <<DEFINITION
  [
    {
      "name": "xapo_task",
      "image": "xapo_docker_image_url_from_ECR",
      "essential": true,
      "portMappings": [
        {
          "containerPort": 8333,
          "hostPort": 8333
        }
      ],
      "memory": 512,
      "cpu": 256
    }
  ]
  DEFINITION
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"   
  memory                   = 512         
  cpu                      = 256         
  execution_role_arn       = "${aws_iam_role.ecsTaskExecutionRole.arn}"
}
