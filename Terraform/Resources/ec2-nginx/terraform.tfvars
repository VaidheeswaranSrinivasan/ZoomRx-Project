instance_count              = 1
name                        = "nginx-server"
ami                         = "ami-0ff4c8fb495a5a50d"
instance_type               = "t2.micro"
subnet_filter               = "*public_1*"
associate_public_ip_address = true
key_name                    = "london"
iam_instance_profile        = "EC2_Instance_Role"
user_data                   = "user_data.sh"

root_block_device = [
    {
        volume_type           = "gp2"
        volume_size           = 10
        delete_on_termination = "true"
        encypted              = "false"
    }
]

volume_tags = {
    "Name"      = "ebs_application"
    "encrypted" = "false"
}

tags = {
    "type" = "ec2-nginx-instance"
    "description" = "EC2 instance for Nginx reverse proxy"
}

sg_name = "nginx_sg"

sg_tags = {
    "descrition" = "The security group that allows HTTP and SSH port to access the application from anywhere"
}

sg_rules = [
    {
        type        = "ingress" 
        description = "Allows SSH access from anywhere"
        from_port   = "22"
        to_port     = "22"
        protocol    = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    },
    {
        type        = "ingress" 
        description = "Allows HTTP access from anywhere"
        from_port   = "80"
        to_port     = "80"
        protocol    = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }
]