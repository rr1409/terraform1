output "Mum_public_ip" {
  value = aws_instance.myinstance_mum[*].public_ip

}

output "Mum_public_dns" {
  value = aws_instance.myinstance_mum[*].public_dns

}

output "Mum_ami_id" {
  value = aws_instance.myinstance_mum[*].ami

}


output "nv_public_ip" {
  value = aws_instance.myinstance_nv[*].public_ip

}

output "nv_public_dns" {
  value = aws_instance.myinstance_nv[*].public_dns

}

output "nv_ami_id" {
  value = aws_instance.myinstance_nv[*].ami
}