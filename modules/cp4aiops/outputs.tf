#####################################################
# Cloud Pak for CP4AIOPS
# Copyright 2022 IBM
#####################################################

output "ai_manager_endpoint" {
  depends_on = [
    data.external.get_aiman_endpoints,
  ]
  value = length(data.external.get_aiman_endpoints) > 0 ? data.external.get_aiman_endpoints.result.endpoint : ""
}

output "ai_manager_user" {
  depends_on = [
    data.external.get_aiman_endpoints,
  ]
  value = length(data.external.get_aiman_endpoints) > 0 ? data.external.get_aiman_endpoints.result.username : ""
}

output "ai_manager_password" {
  depends_on = [
    data.external.get_aiman_endpoints,
  ]
  value = length(data.external.get_aiman_endpoints) > 0 ? data.external.get_aiman_endpoints.result.password : ""
}

output "event_manager_endpoint" {
  depends_on = [
    data.external.get_evtman_endpoints,
  ]
  value = length(data.external.get_evtman_endpoints) > 0 ? data.external.get_evtman_endpoints.result.endpoint : ""
}

output "event_manager_user" {
  depends_on = [
    data.external.get_evtman_endpoints,
  ]
  value = length(data.external.get_evtman_endpoints) > 0 ? data.external.get_evtman_endpoints.result.username : ""
}

output "event_manager_password" {
  depends_on = [
    data.external.get_evtman_endpoints,
  ]
  value = length(data.external.get_evtman_endpoints) > 0 ? data.external.get_evtman_endpoints.result.password : ""
}
