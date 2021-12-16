output "public-server" {
  description = "Public IP of public server"
  value       = aws_instance.my_public_server.public_ip
}
output "pubsrv1" {
  description = "public address of the first instance"
  value       = aws_instance.my_public_server.private_ip
}
output "pvtsrv1" {
  description = "private address of the first instance"
  value       = aws_instance.pvt_first_server.private_ip
}

output "pvtsrv2" {
  description = "private address of the first instance"
  value       = aws_instance.pvt_second_server.private_ip
}

output "pvtsrv3" {
  description = "private address of the first instance"
  value       = aws_instance.pvt_third_server.private_ip
}

output "pvtsrv4" {
  description = "private address of the first instance"
  value       = aws_instance.pvt_fourth_server.private_ip
}

output "pvtsrv5" {
  description = "private address of the first instance"
  value       = aws_instance.pvt_fifth_server.private_ip
}
output "image_id" {
    value = "${data.aws_ami.my_aws_ami.id}"
}
