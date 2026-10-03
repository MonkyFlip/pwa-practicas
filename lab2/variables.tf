variable "project_name" {
    description = "The name of project."
    type        = string
    
    validation {
        condition     = length(var.project_name) >= 5 && length(var.project_name) <= 20
        error_message = "The project name must not be empty."
    }
}

variable "environment" {
    description = "The environment for deploying the resources."
    type        = string
    
    validation {
        condition     = contains(["dev", "qa", "prod"], var.environment)
        error_message = "The environment must be one of: dev, qa, prod."
    }
}

variable "location" {
    description = "The Azure region where the resources will be deployed."
    type        = string
    
    default     = "westus"
}

variable "vnet_address_space" {
    description = "The address space for the virtual network."
    type        = list(string)
    
    default     = ["10.0.0.0/16"]
}

variable "tags" {
    description = "A map of tags to assign to the resources."
    type        = map(string)
    
    default     = { managed_by = "terraform" }
}

variable "subscription_id" {
    description = "The Azure subscription ID where the resources will be deployed."
    type        = string
    default     = "faf450df-7a1e-41be-986d-b997d337fe77"
    sensitive   = true
}