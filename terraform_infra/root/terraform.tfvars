rgs = {
  rg1 = {
    name     = "management"
    location = "eastus"
  }

  rg2 = {
    name     = "hub"
    location = "eastus"
  }

}

connectivity = {
  vnet1 = {
    name                = "vnet-eastus"
    location            = "eastus"
    resource_group_name = "hub"

    address_space = [
      "10.0.0.0/16"
    ]
  }
}