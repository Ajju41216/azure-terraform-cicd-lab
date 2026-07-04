spoke_rgs = {
  rg1 = {
    name     = "rg-spoke"
    location = "Central India"
  }

  rg2 = {
    name     = "spoke-mgmt"
    location = "Central India"
  }

  rg3 = {
    name     = "spoke-mgmt"
    location = "Central India"
  }

}

spoke_vnet = {

  mainvet = {

    name = "spokevnet"

    location = "Central India"

    resource_group_name = "rg-spoke"

    address_space = ["10.1.0.0/16"]

  }

}

spoke_subnet = {

  app1 = {
    name = "nginx_frontend"

    resource_group_name = "rg-spoke"

    address_prefixes = ["10.1.1.0/26"]

    virtual_network_name = "spokevnet"

  }

  app2 = {

    name = "app_backend"

    resource_group_name = "rg-spoke"

    address_prefixes = ["10.1.2.0/24"]

    virtual_network_name = "spokevnet"

  }
  app3 = {

    name = "database"

    resource_group_name = "rg-spoke"

    address_prefixes = ["10.1.3.0/24"]

    virtual_network_name = "spokevnet"
  }

   
    privateendpointsub = {

    name = "PrivateEndpointSubnet"

    resource_group_name = "rg-spoke"

    address_prefixes = ["10.1.5.0/26"]

    virtual_network_name = "spokevnet"
  }
}

