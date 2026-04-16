variable "instances" {
    default = [ "mongodb", "redis", "mysql", "rabbitmq", "catalogue", "user", "cart", "shipping", "payment", "frontend" ]
}

variable "zone_id" {
    default = "Z060355410Z0MXGGSOS36"
}

variable "domain_name" {
    default = "heysushma.fun"
}