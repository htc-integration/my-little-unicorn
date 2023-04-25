provider "random" {}

variable "first_last_name" {
  default = {
    "Jan" : "Janssen",
    "Kees" : "Bakker"
  }
}

module "name_complete" {
  for_each   = var.first_last_name
  source     = "./module_name/"
  first_name = each.key
  last_name  = each.value
}

data "http" "myip" {
  url = "https://api.ipify.org"
}

resource "null_resource" "test" {
  count = 5
}

resource "testRessource2" {
  count = 5
}

resource "testRessource3" {
  count = 5
}





