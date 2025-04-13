# 🌐 Laboratório AWS – Infraestrutura Web Escalável e Alta Disponibilidade

Este laboratório tem como objetivo criar uma aplicação web altamente **disponível**, **escalável** e **resiliente** na AWS. Utilizamos os principais serviços de computação e balanceamento de carga para garantir que a aplicação suporte variações de tráfego e se recupere de falhas automaticamente.

---

## 🎯 Objetivos

- Criar um ambiente web distribuído e com balanceamento de carga.
- Utilizar **Launch Templates**, **Auto Scaling Groups** e **Application Load Balancer**.
- Garantir alta disponibilidade em múltiplas zonas de disponibilidade (AZs).
- Configurar um ambiente que se adapta automaticamente à demanda.

---

## 🧱 Serviços Utilizados

- Amazon EC2
- Auto Scaling Groups
- Launch Templates
- Application Load Balancer
- Amazon VPC (Default)

---

## 📌 Etapas Realizadas

### ✅ 1. Verificação da VPC padrão
- Localização: us-east-1 (Norte da Virgínia)
- Verificação da VPC default, subnets públicas e Internet Gateway

### ✅ 2. Configuração do Security Group
- Nome: `SG-Lab-VinicusSantos`
- Portas liberadas: HTTP (80) e HTTPS (443)

### ✅ 3. Criação do Launch Template
- AMI: Amazon Linux 2
- Tipo de instância: t2.micro
- Script de User Data para instalação e ativação do Apache:

```bash
#!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "<h1>Servidor Web - Instância: $(hostname -f)</h1>" > /var/www/html/index.html
```

### ✅ 4. Criação do Auto Scaling Group
VPC: padrão

Subnets: 2 subnets públicas em AZs diferentes

Capacidade mínima, máxima e desejada: 2

Health Checks: ativados

### ✅ 5. Configuração do Application Load Balancer
Tipo: Internet-facing

Listener: HTTP (porta 80)

Target Group: instâncias do Auto Scaling Group

### 🔍 Testes Realizados
Copiado o DNS do Load Balancer e acessado via navegador

Página exibida com hostname da instância (ex: Servidor Web - Instância: ip-172-xx-xx-xx)

Após atualizar a página, foi possível ver a alternância entre instâncias, comprovando o balanceamento de carga
