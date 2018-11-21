# terraform-aws-fastmail-dns

This is an unofficial [Terraform](https://www.terraform.io) module which creates
[AWS Route 53](https://aws.amazon.com/route53/) records to setup a domain with
[FastMail](https://www.fastmail.com).

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| domain\_name | The domain name to setup DNS records for like `example.com` | string | - | yes |
| create\_root\_domain\_txt | Determines if the root domain should have a TXT record. | string | `true` | no |
| record\_ttl | Record TTLS | string | `3600` | no |

## Example Usage

In your Terraform file:

```
resource "aws_route53_zone" "example" {
  name = "example.com"
}

module "example_fastmail" {
  source = "github.com/joshdurbin/terraform-aws-fastmail-dns"

  domain_name = "example.com"
}
```
