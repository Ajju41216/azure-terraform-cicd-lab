
variable "rgs" {

  type = map(object({

    name = string

    location = string

  }))
}


variable "hvet" {
  type = map(object({

    name = string

    location = string

    resource_group_name = string

    address_space = list(string)

  }))

}



variable "hsubnet" {

  type = map(object({

    name = string

    resource_group_name = string

    virtual_network_name = string

    address_prefixes = list(string)

  }))

}
