resource "aws_dynamodb_table" "train_location" {
  name         = "TrainLocation"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "TrainID"
  range_key    = "Timestamp"

  attribute {
    name = "TrainID"
    type = "S"
  }

  attribute {
    name = "Timestamp"
    type = "S"
  }
}

# insert train location data into dynamodb table
resource "aws_dynamodb_table_item" "train_location_items" {
  for_each = { for idx, item in local.train_location_data : idx => item }

  table_name = aws_dynamodb_table.train_location.name
  hash_key   = "TrainID"
  range_key  = "Timestamp"

  item = <<ITEM
{
    "TrainID": {"S": "${each.value.TrainID}"},
    "Timestamp": {"S": "${each.value.Timestamp}"},
    "Latitude": {"N": "${each.value.Latitude}"},
    "Longitude": {"N": "${each.value.Longitude}"},
    "Speed": {"N": "${each.value.Speed}"},
    "Direction": {"S": "${each.value.Direction}"}
}
ITEM
}
