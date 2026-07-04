spoke_rgs = {
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

spoke_vnet = {

  mainvet = {

    name = "HubVNet"

    location = "Central India"

    resource_group_name = "RG-Network"

    address_space = ["10.1.0.0/16"]

  }

}

spoke_subnet = {

  firwallsubnet = {
    name = "AppGatewaySubnet"

    resource_group_name = "RG-Network"

    address_prefixes = ["10.1.1.0/26"]

    virtual_network_name = "HubVNet"

  }

  frountendsub = {

    name = "FrontendSubnet"

    resource_group_name = "RG-Network"

    address_prefixes = ["10.1.2.0/24"]

    virtual_network_name = "HubVNet"

  }
  backendsub = {

    name = "BackendSubnet"

    resource_group_name = "RG-Network"

    address_prefixes = ["10.1.3.0/24"]

    virtual_network_name = "HubVNet"
  }

    databasesub = {

    name = "DatabaseSubnet"

    resource_group_name = "RG-Network"

    address_prefixes = ["10.1.4.0/24"]

    virtual_network_name = "HubVNet"
  }
   
    privateendpointsub = {

    name = "PrivateEndpointSubnet"

    resource_group_name = "RG-Network"

    address_prefixes = ["10.1.5.0/26"]

    virtual_network_name = "HubVNet"
  }
}

