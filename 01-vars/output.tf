output "sample_string" {
  value = var.sample_string
}

output "sample_string1" {
  value = "value of string_name = ${var.sample_string}"
}

output "sample_list" {
  value = var.sample_list[2]
}

output "sample_map" {
  value = var.sample_map["number1"]
}

output "env" {
  value = "var.env"
}

output "auto_numb1" {
  value = var.auto_numb1
}

output "sample1" {
  value = var.sample1
}
