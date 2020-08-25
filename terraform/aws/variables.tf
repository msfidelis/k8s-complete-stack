
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
    default     = "../../cncf_key.pub"
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

################################
######       PROXY        ######
################################

variable "front_proxy_instance_type" {
    description = "Front Proxy Instance type"
    default = "c4.large"
}


################################
######    KUBERNETES   #########
################################

variable "kubernetes_master_instance_type" {
    description = "Kubernetes Master instance type"
    default     = "c4.large"
}

variable "kubernetes_master_count" {
    description = "Kubernetes Master count"
    default     = 1
}

variable "kubernetes_nodes_instance_type" {
    description = "Kubernetes Nodes instance type"
    default     = "c4.large"
}

variable "kubernetes_nodes_count" {
    description = "Kubernetes nodes count"
    default     = 4
}
