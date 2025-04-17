# 🖥️ Laboratório – Amazon EC2 e Armazenamento EBS
 
Este é o último laboratório da trilha da **Turma DPCN** da **Escola da Nuvem**, ministrado pela professora **Josely Castro**, encerrando a jornada com foco em **provisionamento de servidores e volumes persistentes na AWS**.

---

## 🎯 Objetivo

- Criar uma instância EC2 com armazenamento adicional via volume EBS
- Conectar à instância via SSH
- Montar e formatar o volume EBS na máquina
- Criar **snapshots manuais** e **políticas de backup automático**

---

## 🧱 Serviços Utilizados

- Amazon EC2  
- Amazon EBS  
- Snapshots e Backup Automático  
- IAM (Chaves SSH)  

---

## 🛠️ Etapas Realizadas

### 1. Criação da Instância EC2
- AMI: Amazon Linux 2  
- Tipo: t2.micro (Free Tier)  
- Região: us-east-1  
- Par de chaves gerado para acesso via SSH  
- Security Group com SSH liberado para IP pessoal

### 2. Adição de Volume EBS
- Volume adicional de 8GB adicionado na criação  
- Volume identificado via `lsblk` na instância

### 3. Preparação do Volume
- Formatação com `mkfs.ext4`  
- Criação do ponto de montagem: `/mnt/dados`  
- Montagem do volume via `mount`  
- Validação com `lsblk`

### 4. Backup e Automação
- Criação de **Snapshot manual**  
- Criação de **Política de Snapshot automática**  
- Tags aplicadas para organização e FinOps

---

## 🔐 Boas Práticas

- Acesso via SSH com chave privada  
- Volume montado manualmente (com opção de automação via `/etc/fstab`)  
- Backups configurados com retenção  
- Recursos marcados com tags para rastreabilidade

---

## 👩‍🏫 Formação: **Escola da Nuvem**  
Professor: **João Gaioso**  
Turma: **DPCN**

---

## ✍️ Autor

**Vinicius Santos**  
Turma DPCN – Escola da Nuvem
