
################################
###### QUICK EDIT'S HERE  ######
################################

###### CLUSTER OPTIONS  ######

# Customize the Cluster Name
variable "project_name" {
    description = "Cluster Name"
    default     = "k8s-stack"
}

variable "ami" {
    description = "Ubuntu 18.04 AMI"
    default = "ami-07ebfd5b3428b6f4d"
}


# Customize your AWS Region
variable "aws_region" {
    description = "AWS Region for the VPC"
    default     = "us-east-1"
}

# Customize your key path
variable "aws_key_path" {
    description = "key_path"
    default     = "../../ansible/configs/example.pub"
}

# Tags
variable "tags" {
    default = {
        project       = "k8s-stack"
        enviroment    = "prod"
    }
}


################################
######      HARBOR        ######
################################

variable "harbor_instance_type" {
    description = "Harbor instance type"
    default     = "c4.large"
}


################################
######       GITEA        ######
################################

variable "gitea_instance_type" {
    description = "Gitea instance type"
    default     = "c4.large"
}
