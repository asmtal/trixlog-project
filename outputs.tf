output "address" {
  value = "${aws_elb.web.dns_name}"
}

output "public_ip" {
  value = "${aws_instance.trixlog_project.public_ip}"
}