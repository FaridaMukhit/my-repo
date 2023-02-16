resource "aws_sqs_queue" "main" {
name = replace(local.name, "resource", main-sqs)
tags = local.common_tags
}