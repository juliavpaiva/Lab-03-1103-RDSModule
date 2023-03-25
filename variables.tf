variable "region" {
  type        = string
}

variable "subnet_group_name_list" {
  type = list(string)
}

variable "security_group_id" {
  type        = string
}

variable "identifier" {
  type        = string
}

variable "db_name" {
  type        = string
}

variable "engine" {
  type        = string
}

variable "engine_version" {
  type        = string
}

variable "instance_class" {
  type        = string
}

variable "storage_size" {
  type        = number
}

variable "username" {
  type        = string
}

variable "password" {
  type        = string
}
