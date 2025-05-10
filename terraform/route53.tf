# Criar a Hosted Zone pública
resource "aws_route53_zone" "douglasaguirre" {
  name = "douglasaguirre.com"
  comment = "Public hosted zone for douglasaguirre.com"
}

# Criar o registro DNS do tipo CNAME
resource "aws_route53_record" "vproapp_cname" {
  zone_id = aws_route53_zone.douglasaguirre.zone_id
  name    = "vprofile.douglasaguirre.com"
  type    = "CNAME"
  ttl     = 300
  records = ["af5f5870248e34c54b2bf97658c2db78-9d1c5ad466314b67.elb.us-east-1.amazonaws.com"]
}