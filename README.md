# ZoomRx-Project.
Setting up nginx as reverse proxy and Load balancer

The repository holds the code for setting up the nginx as reverse proxy and load balancer

Required softwares to be installed in the local machine

1. Terraform - Download from [terraform](https://www.terraform.io/downloads.html)

Please follow the below steps

2. Set the AWS access and secret keys as env variables in the local machine.

3. Create the nginx server and app servers using below terraform commands
   ```bash
   terraform init
   terraform plan
   terraform apply --auto-approve
   ```

4. Follow the steps present in the steps.txt in the Docker folder

5. Run the SSM run command CLI command on to the nginx server to configure the nginx using ansible playbook

6. Once the Run command is successful hit the below url
   ```bash
   http://<nginx-server-ip>
   ```