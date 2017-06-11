# Digital Ocean + Terraform

Provision a Digital Ocean droplet with Terraform.

## Setup

### Digital Ocean Access Token
* [Create a Digital Ocean access token](https://www.digitalocean.com/community/tutorials/how-to-use-the-digitalocean-api-v2)
* Export your access token in `.bashrc` or `.bash_profile`

    `export TF_VAR_do_token="YOUR_TOKEN_HERE"`

### SSH Keys
* [Add your ssh key to your Digitcal Ocean account](https://www.digitalocean.com/community/tutorials/how-to-set-up-ssh-keys--2)
* Get you ssh key id with 

    `curl -X GET -H "Content-Type: application/json" -H "Authorization: Bearer YOUR_TOKEN_HERE" "https://api.digitalocean.com/v2/account/keys"`

* Export your ssh key id in `.bashrc` or `.bash_profile`

    `export TF_VAR_do_ssh_id="YOUR_ID_HERE"`

### Refresh Bash Environment Variables
* Refresh your bash environment variables with `source ~/.bashrc`` or `source ~/.bash_profile`

## Provision Your Droplet
```
terraform plan
terraform apply 
```
