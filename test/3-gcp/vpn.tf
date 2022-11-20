module "vpn_ha" {
  source                = "terraform-google-modules/vpn/google//modules/vpn_ha"
  project_id            = var.gcp_project
  region                = var.gcp_region
  network               = "https://www.googleapis.com/compute/v1/projects/data-protection-02/global/networks/vpn-network-ha"
  name                  = "gcp-to-aws"
  create_vpn_gateway    = false
  vpn_gateway_self_link = var.gcp_vpn_gateway_id
  peer_external_gateway = {
    redundancy_type = "FOUR_IPS_REDUNDANCY"
    interfaces = [{
      id         = 0
      ip_address = var.aws_customer_vgw_1_tunnel1_ip # aws router ip address
      },
      {
        id         = 1
        ip_address = var.aws_customer_vgw_1_tunnel2_ip # aws router ip address
      },
      {
        id         = 2
        ip_address = var.aws_customer_vgw_2_tunnel1_ip # aws router ip address
        }, {
        id         = 3
        ip_address = var.aws_customer_vgw_2_tunnel2_ip # aws router ip address
    }, ]
  }
  router_asn = var.gcp_router_asn
  # Inside Virtual Private Gateway IP/CIDR -->   BGP Peer IPv4 
  # Inside Customer Gateway IP/CIDR --> Cloud router BGP IPv4
  tunnels = {
    remote-0 = {
      bgp_peer = {
        address = var.aws_vgw1_tunnel1_inside_address
        asn     = var.aws_asn
      }
      bgp_peer_options                = null
      bgp_session_range               = var.aws_customer_vgw_1_tunnel1_inside_cidr
      ike_version                     = 1
      vpn_gateway_interface           = 0
      peer_external_gateway_interface = 0
      shared_secret                   = var.preshared_key
    }
    remote-1 = {
      bgp_peer = {
        address = var.aws_vgw1_tunnel2_inside_address
        asn     = var.aws_asn
      }
      bgp_peer_options                = null
      bgp_session_range               = var.aws_customer_vgw_1_tunnel2_inside_cidr
      ike_version                     = 1
      vpn_gateway_interface           = 1
      peer_external_gateway_interface = 0
      shared_secret                   = var.preshared_key
    }
    remote-2 = {
      bgp_peer = {
        address = var.aws_vgw2_tunnel1_inside_address
        asn     = var.aws_asn
      }
      bgp_peer_options                = null
      bgp_session_range               = var.aws_customer_vgw_2_tunnel1_inside_cidr
      ike_version                     = 1
      vpn_gateway_interface           = 0
      peer_external_gateway_interface = 0
      shared_secret                   = var.preshared_key
    }
    remote-3 = {
      bgp_peer = {
        address = var.aws_vgw2_tunnel2_inside_address
        asn     = var.aws_asn
      }
      bgp_peer_options                = null
      bgp_session_range               = var.aws_customer_vgw_2_tunnel2_inside_cidr
      ike_version                     = 1
      vpn_gateway_interface           = 1
      peer_external_gateway_interface = 0
      shared_secret                   = var.preshared_key
    }
  }
}
