# Digital Ocean + Terraform

Provision a Digital Ocean droplet with Terraform.

## Requirements

### SSH Keys
* Add your ssh key to your Digitcal Ocean account
* Export your ssh keys in `.bashrc` or  `.bash_profile`

    export TF_VAR_do_ssh_id="your id"

### Digital Ocean API Token
* Create a Digital Ocean access token
* Export your access token in `.bashrc` or `.bash_profile`

    export TF_VAR_do_token="your token"

## Provisioning

    terraform plan
    terraform apply 
