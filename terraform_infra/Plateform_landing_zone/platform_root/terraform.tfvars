rgs = {
  rg1 = {
    name     = "hub-rg-network"
    location = "Central India"
  }

}

hvet = {

  mainvet = {

    name = "HubVNet"

    location = "Central India"

    resource_group_name = "hub-rg-network"

    address_space = ["10.0.0.0/16"]

  }

}

hsubnet = {

  firewall = {
    name = "AzureFirewallSubnet"

    resource_group_name = "hub-rg-network"

    address_prefixes = ["10.0.1.0/26"]

    virtual_network_name = "HubVNet"

  }

  sharedservices = {
    name = "SharedServicesSubnet"

    resource_group_name = "hub-rg-network"

    address_prefixes = ["10.0.2.0/26"]

    virtual_network_name = "HubVNet"

  }

  dns = {

    name = "DNSResolverSubnet"

    resource_group_name = "hub-rg-network"

    address_prefixes = ["10.0.3.0/26"]

    virtual_network_name = "HubVNet"

  }

  gateway = {

    name = "GatewaySubnet"

    resource_group_name = "hub-rg-network"

    address_prefixes = ["10.0.4.0/26"]

    virtual_network_name = "HubVNet"

  }

  Privaetendpoint = {

    name = "PrivateEndpointSubnet"

    resource_group_name = "hub-rg-network"

    address_prefixes = ["10.0.5.0/26"]

    virtual_network_name = "HubVNet"

  }
}

