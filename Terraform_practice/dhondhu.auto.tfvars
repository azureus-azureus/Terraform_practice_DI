rgroup = {
  rgroup1 = {
    rgroup1  = "rajcomics"
    location = "central india"
  }
}


vnet = {
  vnet1 = {
    name                = "dhruva"
    location            = "central india"
    resource_group_name = "rajcomics"
    address_space       = ["192.168.0.0/16"]
    subnets = {
      subnet1 = {
        name           = "bauna_waman"
        address_prefix = "192.168.1.0/24"
      }

      subnet2 = {
        name           = "natasha"
        address_prefix = "192.168.2.0/24"

      }
    }
  }
  vnet2 = {
    name                = "nagraj"
    location            = "central india"
    resource_group_name = "rajcomics"
    address_space       = ["10.0.0.0/16"]
    subnets = {
      subnet1 = {
        name           = "bharti"
        address_prefix = "10.0.1.0/24"
      }

      subnet2 = {
        name           = "nagpasha"
        address_prefix = "10.0.2.0/24"
      }
    }
  }
}