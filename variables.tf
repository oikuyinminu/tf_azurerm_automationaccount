variable "type" {
  type        = string
  description = "Abbreviation for the type of network. Should be AA, AB, BB, BC, CC."
}

variable "location" {
  description = "Region where the VM is deployed."
  type        = string
}

variable "resource_group_name" {
  description = "Name of resource group into which VM is deployed."
  type        = string
}

variable "create_auto_acct" {
  description = "Flag to indicate if Automation Account should be created. Default to true"
  type        = bool
  default     = true
}

variable "law" {
  description = "Map of the Log Analytics Workspace to be created"
  type        = map(map(string))
  default     = {}
}

variable "required_tags" {
  description = "Optional - tags to apply on resource"
  type = object({
    Environment       = string
    Deployment        = string
    Environment_Owner = string
    RepositoryURL     = string
    Infrastructure    = string
    Division          = string
    CostCentre        = string
  })
}

######
## Other Variables
######

variable "optional_tags" {
  description = "(Optional) List of additional tags to applied to VM."
  type        = map(string)
  default     = {}
}

variable "instance" {
  description = "Instance numver of the deployment. Default to 1."
  type        = number
  default     = 1
}

variable "sku_name" {
    description = "(Optional) The SKU for the Automation Account."
    type = string
    default = "Basic" 
}
