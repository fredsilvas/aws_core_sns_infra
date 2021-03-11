##############################################################################################
### OUTPUT - SNS INFRA


output "PERSON_ONE_SNS_ARN" {
  description = "Show Person One SNS ARN"
  value       = aws_sns_topic.sns_infra_person_two.arn
}

output "PERSON_TWO_SNS_ARN" {
  description = "Show Person Two SNS ARN"
  value       = aws_sns_topic.sns_infra_person_two.arn
}