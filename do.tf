# Set the variable value in *.tfvars file
# or using -var="do_token=..." CLI option
variable "do_token" {}
variable "ssh_fingerprint" {}

# Configure the DigitalOcean Provider
provider "digitalocean" {
    token = "${var.do_token}"
}

# Create a new Web Droplet in the nyc2 region
resource "digitalocean_droplet" "web" {
    image = "ubuntu-14-04-x64"
    name = "web-1"
    region = "nyc2"
    size = "512mb"
    ssh_keys = ["${var.ssh_fingerprint}"]
}

# Create a new SSH key
resource "digitalocean_ssh_key" "default" {
    name = "gotcha-macbook"
    public_key = "${file("/Users/gotcha/.ssh/id_dsa.pub")}"
}
