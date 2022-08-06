variable "resource_group_name" {
  type = string
  description = "The name of the resource group"

}

variable "resource_group_location" {
  type = string
  description = "The location of the resource group"

}

variable "ACR_id" {
  type = string
  description = "The id of the ACR"
}

variable "amount_of_nodes" {
  type = number
  description = "Amount of desired nodes in the cluster"
}