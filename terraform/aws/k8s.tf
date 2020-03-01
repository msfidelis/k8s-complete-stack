resource "aws_instance" "master" {

    ami = var.ami
    instance_type = var.kubernetes_master_instance_type



    subnet_id = aws_subnet.public_subnet.id
    associate_public_ip_address = true

    vpc_security_group_ids = [ 
        aws_security_group.kubernetes.id
    ]

    key_name = aws_key_pair.cluster_key.key_name

    tags = merge(var.tags, { 
        Name = format("%s-k8s-master", var.project_name)
    })

}

resource "aws_instance" "nodes" {

    ami             = var.ami
    instance_type   = var.kubernetes_nodes_instance_type
    count           = var.kubernetes_nodes_count
    

    subnet_id       = aws_subnet.public_subnet.id
    associate_public_ip_address = true

    vpc_security_group_ids = [ 
        aws_security_group.kubernetes.id
    ]

    key_name        = aws_key_pair.cluster_key.key_name

    tags = merge(var.tags, { 
        Name = format("%s-k8s-node", var.project_name)
    })

}

resource "aws_security_group" "kubernetes" {

    name        = format("%s-kubernetes-sg", var.project_name)

    vpc_id      = aws_vpc.cluster_vpc.id

    ingress {
        from_port   = "22"
        to_port     = "22"
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port   = "80"
        to_port     = "80"
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port   = "443"
        to_port     = "443"
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port = 0
        to_port = 65535
        protocol = "tcp"
        self = true
        description = "nodes"
    }

    ingress {
        from_port = 0
        to_port = 65535
        protocol = "udp"
        self = true
        description = "nodes"
    }

    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = merge(var.tags, { 
        Name = format("%s-gitea-sg", var.project_name)
    })


}