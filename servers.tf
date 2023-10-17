
resource "aws_instance" "instance" {
  for_each = var.components
  ami           = data.aws_ami.centos.image_id
  instance_type = each.value["instance_type"]
  vpc_security_group_ids = [data.aws_security_group.allow-all.id]

  tags = {
    Name = each.value["name"]
  }
}
resource "null_resource" "provisioner" {

  depends_on = [aws_instance.instance, aws_route53_record.records]

  for_each = var.components
  provisioner "remote-exec" {

    connection {
      type     = "ssh"
      user     = "centos"
      password = "DevOps321"
      host     = aws_instance.instance[each.value["name"]].private_ip
    }

    inline = [
      "rm -rf roboshop_shell",
      "git clone https://github.com/haseeb-abdul9/roboshop_shell",
      "cd roboshop_shell",
      "sudo bash ${each.value["name"]}.sh ${lookup(each.value, "password", "null") }"
    ]
  }
}

resource "aws_route53_record" "records" {
  for_each = var.components
  zone_id = "Z07904683H2P61IIEYSB9"
  name    = "${each.value["name"]}-dev.haseebdevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.instance[each.value["name"]].private_ip]
}
