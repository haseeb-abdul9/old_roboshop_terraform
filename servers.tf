data "aws_ami" "centos" {
  owners           = [973714476881]
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
}


resource "aws_instance" "frontend" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t3.small"

  tags = {
    Name = "frontend"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = Z07904683H2P61IIEYSB9
  name    = "frontend-dev.haseebdevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}

output "frontend" {
  value = aws_instance.frontend.public_ip
}

resource "aws_instance" "mongodb" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t3.small"

  tags = {
    Name = "mongodb"
  }
}

resource "aws_route53_record" "mongodb" {
  zone_id = Z07904683H2P61IIEYSB9
  name    = "mongodb-dev.haseebdevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mongodb.private_ip]
}

resource "aws_instance" "catalogue" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t3.small"

  tags = {
    Name = "catalogue"
  }
}

resource "aws_route53_record" "catalogue" {
  zone_id = Z07904683H2P61IIEYSB9
  name    = "frontend-dev.haseebdevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.catalogue.private_ip]
}


resource "aws_instance" "redis" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t3.small"

  tags = {
    Name = "redis"
  }
}

resource "aws_route53_record" "redis" {
  zone_id = Z07904683H2P61IIEYSB9
  name    = "redis-dev.haseebdevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.redis.private_ip]
}


resource "aws_instance" "user" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t3.small"

  tags = {
    Name = "user"
  }
}

resource "aws_route53_record" "user" {
  zone_id = Z07904683H2P61IIEYSB9
  name    = "user-dev.haseebdevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.user.private_ip]
}


resource "aws_instance" "cart" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t3.small"

  tags = {
    Name = "cart"
  }
}

resource "aws_route53_record" "cart" {
  zone_id = Z07904683H2P61IIEYSB9
  name    = "cart-dev.haseebdevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.cart.private_ip]
}


resource "aws_instance" "mysql" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t3.small"

  tags = {
    Name = "mysql"
  }
}

resource "aws_route53_record" "mysql" {
  zone_id = Z07904683H2P61IIEYSB9
  name    = "mysql-dev.haseebdevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mysql.private_ip]
}

resource "aws_instance" "shipping" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t3.small"

  tags = {
    Name = "shipping"
  }
}

resource "aws_route53_record" "shipping" {
  zone_id = Z07904683H2P61IIEYSB9
  name    = "shipping-dev.haseebdevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.shipping.private_ip]
}


resource "aws_instance" "rabbitmq" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t3.small"

  tags = {
    Name = "rabbitmq"
  }
}

resource "aws_route53_record" "rabbitmq" {
  zone_id = Z07904683H2P61IIEYSB9
  name    = "rabbitmq-dev.haseebdevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.rabbitmq.private_ip]
}


resource "aws_instance" "payment" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t3.small"

  tags = {
    Name = "payment"
  }
}

resource "aws_route53_record" "payment" {
  zone_id = Z07904683H2P61IIEYSB9
  name    = "payment-dev.haseebdevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.payment.private_ip]
}
