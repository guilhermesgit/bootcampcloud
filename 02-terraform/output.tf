output "repos" {
  value = values(aws_codecommit_repository.repos).*.clone_url_ssh
}

