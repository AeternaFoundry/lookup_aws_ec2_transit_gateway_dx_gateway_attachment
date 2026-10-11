variable "ec2_transit_gateway_dx_gateway_attachment_lookup" {
  description = <<EOT
Map of ec2_transit_gateway_dx_gateway_attachment_lookup, attributes below
Optional:
    - dx_gateway_id
    - region
    - tags
    - transit_gateway_id
    - filter (block):
        - name (required)
        - values (required)
EOT

  type = map(object({
    dx_gateway_id      = optional(string)
    region             = optional(string)
    tags               = optional(map(string))
    transit_gateway_id = optional(string)
    filter = optional(list(object({
      name   = string
      values = set(string)
    })))
  }))
}

