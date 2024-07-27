locals {
  train_location_data = jsondecode(file("${path.module}/train_location_data.json"))
}
