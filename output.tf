output "my-public-ip" {
  value = "aws_lightsail_instance.custom.public_ip_address"
}

output "Tacho" {
  value = "aws_lightsail_instance.custom.username"
}