rgs = {
  rg1 = {
    name     = "RG-Network"
    location = "Central India"
  }

  rg2 = {
    name     = "RG-Management"
    location = "Central India"
  }

  rg3 = {
    name     = "RG-Identity"
    location = "Central India"
  }

}

hvet = {

  mainvet = {

    name = "HubVNet"

    location = "Central India"

    resource_group_name = "RG-Network"

    address_space = ["10.0.0.0/16"]

  }

}

hsubnet = {

  firwallsubnet = {
    name = "AzureFirewallSubnet"

    resource_group_name = "RG-Network"

    address_prefixes = ["10.0.1.0/26"]

    virtual_network_name = "HubVNet"

  }

  sharedserveries = {
    name = "SharedServicesSubnet"

    resource_group_name = "RG-Network"

    address_prefixes = ["10.0.1.0/26"]

    virtual_network_name = "HubVNet"

  }
}

