locals {
  vnet_name      = "my-vnet"
  address_space  = "10.1.0.0/16"
  location       = "westeurope"
  resource_group = "Gregory_E"
  subnet_count    = 2

  tags = {
    TP       = "terraform-azure-vnet-dynamic"
    Owner    = "GrOoT"
    DeployID = formatdate("DD-MM-YYYY", timestamp())
  }
}
