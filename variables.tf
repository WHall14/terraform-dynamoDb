variable "resource_name" {
  default = "dynamoDB-table-dev"
  description = "Name of the Dynamo DB resource"

  validation {
    condition = can(regex("^[\\w+=,.@-]+$", var.resource_name))
    error_message = "Resource name must match AWS resource name regex defined"
  }
}

variable "read_capacity" {
  default = 20
  description = "Read Capacity for AWS DynamoDB"

  validation {
    condition = can(regex("^-?\\d+$", var.read_capacity))
    error_message = "The read_capacity value must be of type Integer"
  }
}

variable "write_capacity" {
  default = 20
  description = "Write Capacity for AWS DynamoDB"

  validation {
    condition = can(regex("^-?\\d+$", var.write_capacity))
    error_message = "The read_capacity value must be of type Integer"
  }
}