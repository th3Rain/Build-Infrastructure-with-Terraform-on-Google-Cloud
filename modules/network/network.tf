module "vpc" {
    source  = "terraform-google-modules/network/google"
    # version = "6.0"

    project_id   = var.project_id
    network_name = var.vpc-name
    routing_mode = "GLOBAL"

    subnets = [
        {
            subnet_name           = "subnet-01"
            subnet_ip             = "10.10.10.0/24"
            subnet_region         = var.region
        },
        {
            subnet_name           = "subnet-02"
            subnet_ip             = "10.10.20.0/24"
            subnet_region         = var.region
            subnet_private_access = "true"
            subnet_flow_logs      = "true"
        },
    ]

}