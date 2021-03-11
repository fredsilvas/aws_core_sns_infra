##############################################################################################
### SNS ALARM CONFIGURATION
resource "aws_sns_topic" "sns_infra_person_two" {
  name         = "sns_infra_person_two"
  display_name = "SNS Infra - Person Two"

  tags = {
    Name           = "sns_infra_person_two"
    CentroDeCusto  = var.centro_de_custo
    Proprietario   = var.proprietario
    ChamadoInterno = var.chamado_interno
    Ambiente       = var.ambiente
    Projeto        = var.projeto
    Vpc            = var.vpc
    Critico        = false
    DataCriacao    = var.data_criacao
    DataAlteracao  = formatdate("DD-MM-YYYY-hh-mm-ss", timeadd(timestamp(), "-3h"))
    Sensibilidade  = "5"
    Criptografado  = false
  }


  # Email Alarm - Person Two
  provisioner "local-exec" {
    command = "aws sns subscribe --topic-arn ${self.arn} --protocol email --notification-endpoint ${var.sns_email_infra_person_two}"
    when    = create
  }

  provisioner "local-exec" {
    command = "aws sns list-subscriptions-by-topic --topic-arn ${self.arn} --query 'Subscriptions[*].{Arn:SubscriptionArn}' --output text | awk '{print $1}' | while read line; do aws sns unsubscribe --subscription-arn $line; done "
    when    = destroy
  }

}