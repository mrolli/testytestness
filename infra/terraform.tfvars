resource_name_workload    = "testytestness-tf"
resource_name_environment = "test"

location = "westeurope"

repository_full_name = "mrolli/testytestness"

app_config = {
  output_location = "site"
}

tags = {
  division    = "id"
  subdivision = "idci"
  managed_by  = "terraform"
}

enable_telemetry = false
