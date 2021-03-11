##############################################################################################
### VARIAVEIS PROJETO
variable "data_criacao" {
  description = "Creation Date of this Project. Padrão DD-MM-YYYY-hh-mm-ss (Horario Local)"
  default     = ""
}

variable "centro_de_custo" {
  description = "Centro de Custo do Projeto"
  default     = ""
}

variable "proprietario" {
  description = "Proprietário do Projeto"
  default     = ""
}

variable "chamado_interno" {
  description = "Numero do chamado relacionado a este projeto"
  default     = "GLPI=XXXXX"
}

variable "ambiente" {
  description = "Ambiente do Projeto"
  default     = ""
}

variable "projeto" {
  description = "Projeto"
  default     = "SNS"
}

variable "vpc" {
  description = "VPC em que este projeto está rodando"
  default     = "All"
}

variable "responsavel_infra" {
  description = "Responsavel de Infra deste Projeto"
  default     = ""
}

variable "responsavel_dev" {
  description = "Responsavel de Sistemas deste Projeto"
  default     = ""
}

variable "responsavel_db" {
  description = "Responsavel de Banco de Dados"
  default     = ""
}



##############################################################################################
### VARIAVEIS DE EMAIL - INFRA
variable "sns_email_infra_person_one" {
  description = "Email - Person One"
  default     = "person.one@email.com"
}

variable "sns_email_infra_person_two" {
  description = "Email - Person Two"
  default     = "person.two@email.com"
}


##############################################################################################
### VARIAVEIS AWS
variable "aws_region" {
  description = "VPC AWS Region"
  default     = "sa-east-1"
}