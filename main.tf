# Add ssh key to DO and find your id with 
# curl -X GET -H 'Content-Type: application/json' -H "Authorization: Bearer $DIGITALOCEAN_TOKEN" "https://api.digitalocean.com/v2/account/keys"

# Add these to ~/.bashrc and run `source ~/.bashrc`
# export TF_VAR_do_token=<your token>
# export TF_VAR_do_ssh_id-<your id>


provider "digitalocean" {
  token = "${var.do_token}"
}

# Obtain your ssh_key id number via your account. See Document https://developers.digitalocean.com/documentation/v2/#list-all-keys

resource "digitalocean_droplet" "mywebserver" {
  image = "${var.ubuntu}"
  region = "${var.do_ams3}"
  size = "512mb"
  name = "mywebserver-ams3"
  ssh_keys = ["${var.do_ssh_id}"]
#  ssh_keys           = ["${digitalocean_ssh_key.default.id}"]

  provisioner "remote-exec" {
    inline = [
      "export PATH=$PATH:/usr/bin"
    ]

    connection {
      type     = "ssh"
      private_key = "${file("/home/kim/.ssh/rsa/droplet")}"
      user     = "root"
      timeout  = "2m"
    }
  }
}

