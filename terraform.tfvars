vpc_cidr_block = {cidr_block = "172.24.0.0/16", name = "alt_terraform_vpc"}
subnet_cidr_blocks = {
  subnet_01 = {
    cidr = "172.24.1.0/24"
    az = "eu-west-2a"
  }
  subnet_02 = {
    cidr = "172.24.2.0/24"
    az = "eu-west-2b"
  }
  subnet_03 = {
    cidr = "172.24.3.0/24"
    az = "eu-west-2c"
  }
}
igw = "alt_terraform_igw"
rtb = {cidr_block = "0.0.0.0/0", name = "alt_terraform_rtb"}
sg = ["alt_alb_sg", "alt_instances_sg"]

ssh_key = "alt_terraform_key"

lb_name = "altterraformalb"
tg_name = "altterraformtg"

domain_names = {domain_name = "mabdulrahman.cloud", subdomain_name = "terraform-test.mabdulrahman.cloud"}