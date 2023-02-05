data "aws_route53_zone" "alt_terraform_rt53zone" {
  name         = "mabdulrahman.cloud"
}

resource "aws_route53_record" "subdomain_a_record" {
  zone_id = data.aws_route53_zone.alt_terraform_rt53zone.zone_id
  name = var.domain_names.subdomain_name
  type = "A"

  alias {
    name = aws_lb.alt_terraform_lb.dns_name
    zone_id = aws_lb.alt_terraform_lb.zone_id
    evaluate_target_health = true
  }
}