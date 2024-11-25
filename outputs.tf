output "id" {
    value = aws_instance.app_server.arn
    description = "ARN of newly created EC2 instance."
}