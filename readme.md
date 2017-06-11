# Digital Ocean + Terraform

Provision a Digital Ocean droplet with Terraform.

## Requirements

### SSH Keys
* Add your ssh key to your Digitcal Ocean account
* Get you ssh key id with `curl -X GET -H "Content-Type: application/json" -H "Authorization: Bearer <your token goes here>" "https://api.digitalocean.com/v2/account/keys"`
* Export your ssh key id in `.bashrc` or `.bash_profile`

    export TF_VAR_do_ssh_id="your id"

### Digital Ocean Access Token
* Create a Digital Ocean access token
* Export your access token in `.bashrc` or `.bash_profile`

    export TF_VAR_do_token="your token"

### Refresh Bash Environment Variables
* Refresh your bash environment variables with

    `source ~/.bashrc` 

or
 
    `source ~/.bash_profile`

## Provision Your Droplet

    terraform plan
    terraform apply 
