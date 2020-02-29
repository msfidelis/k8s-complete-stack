output "ssh_config" {
  value = <<SSHCONFIG
  
  ### Server IP`s to put on your ansible inventory ###
  Harbor hosts
    User          ubuntu
    Hostname      ${aws_instance.harbor.public_ip}
    IdentityFile  ${var.aws_key_path}

  Gitea hosts
    User          ubuntu
    Hostname      ${aws_instance.gitea.public_ip}
    IdentityFile  ${var.aws_key_path}
    
    SSHCONFIG
}