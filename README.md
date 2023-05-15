# Projetos IAC cloud

Projetos clouds de automação utilizando terraforme  ansible


## Tecnologias utilizadas

 - [Terraform]()
 - [Amazon web service]()
 - [Ansible]()

 


## Motivação

Automação de projetos para a entrega contínua de sistemas focado em CICD

## Guilherme Soares

- [@guilhermesoares](https://www.github.com/guilhermesgit)


## Rodando as aplicações

Para rodar as aplicações é necessário instalar o terraform e o ansible

Linux
```bash
  apt install ansible -y
```
Testando a instalação
```bash
 ansible --version
```

Instalando o terraform
```bash
wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform

```
## Documentação

[Terraform](https://)

[Ansible](https://)

[AWS](https://)

## Características

- Automação de infraestrutra
- Entrega de infraestrutra mais rápida
- Padronização de códigos e trabalho em equipe

