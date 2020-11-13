# ZoomRx-Project.
Setting up nginx as reverse proxy and Load balancer

The repository holds the code for setting up the nginx as reverse proxy and load balancer

Required softwares to be installed in the local machine

1. Terraform - Download from [terraform](https://www.terraform.io/downloads.html)

Please follow the below steps

1. Set the AWS access and secret keys as env variables in the local machine.

2. Create the servers using terraform commands
   ```bash
   terraform init
   terraform plan
   terraform apply --auto-approve
   ```

3. Follow the steps present in the steps.txt in the Docker folder

4. Clone this repo in the nginx server and run the ansible playbook using the below command
   ```bash
   ansible-playbook playbook.yml
   ```