
variable "region" {
  type        = string
  description = "(Optional) AWS Region to deploy in. Defaults to us-east-1."
  default     = "us-east-1"
}

variable "prefix" {
  type        = string
  description = "(Required) Prefix to use for all resources in this module."
}

variable "environment" {
  type        = string
  description = "(Required) Environment of all resources"
}

variable "billing_code" {
  type        = string
  description = "(Required) Billing code for network resources"
}

# Application variables

variable "ip_range" {
  default = "0.0.0.0/0"
}

variable "instance_type" {
  type        = string
  description = "(Optional) EC2 Instance type to use for web app. Defaults to t3.micro."
  default     = "t3.micro"
}

variable "api_key" {
  type        = string
  description = "(Required) API key for web app to talk to SaaS platform."
}

# Be careful this should correspond to your Terraform Cloud Organization Workspace 'terraform_training_marcus'
variable "tfe_organization" {
  type        = string
  description = "(Required) TFC Organization name"
}

variable "tfe_workspace" {
  type        = string
  description = "(Required) TFC Workspace name to get information"
}

