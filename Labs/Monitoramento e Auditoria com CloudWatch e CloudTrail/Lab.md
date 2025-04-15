# 📊 Laboratório AWS – Monitoramento e Auditoria com CloudWatch e CloudTrail

Este laboratório faz parte da formação **Escola da Nuvem - Turma DPCN**, com foco em **observabilidade e segurança** de ambientes em nuvem.

---

## 🎯 Objetivos

- Criar um alarme no **Amazon CloudWatch** para monitorar o uso de CPU em uma instância EC2.  
- Enviar **notificações por e-mail** utilizando o **Amazon SNS**.  
- Habilitar **auditoria com o AWS CloudTrail**, salvando os logs em um bucket S3.  
- (Opcional) Integrar logs do CloudTrail com o **CloudWatch Logs**.

---

## 🧱 Serviços Utilizados

- Amazon EC2  
- Amazon CloudWatch  
- Amazon SNS  
- AWS CloudTrail  
- Amazon S3  

---

## 🛠️ Etapas Realizadas

### 1. Criação da Instância EC2
- Nome: `Instancia-Teste-CloudWatch`  
- Tipo: `t2.micro`  
- AMI: Amazon Linux 2  
- Acesso via SSH com par de chaves  
- Security Group configurado para SSH (apenas para o IP pessoal)

### 2. Alarme CloudWatch + SNS
- Monitoração: `CPUUtilization`  
- Condição: CPU > 70% por 5 minutos  
- Notificação: Tópico SNS com assinatura de e-mail  
- Ação de teste: instalação do `stress` e execução com `--cpu 8 --timeout 600`

### 3. Habilitação do CloudTrail
- Trilha de auditoria configurada com:
  - Bucket S3 para logs  
  - Criptografia com KMS  
  - Log file validation ativado  

### 4. Visualização dos Logs
- Navegação no bucket S3 para acessar `.gz` com JSON de eventos  
- (Opcional) Envio para **CloudWatch Logs** e visualização no grupo de logs criado

---

## 🔍 Testes e Validação

- Execução do comando `stress` para gerar alta carga de CPU  
- Recebimento de e-mail com alerta do CloudWatch  
- Verificação dos arquivos de log gerados no bucket S3  
- (Opcional) Visualização dos eventos no CloudWatch Logs

---

## 🧹 Limpeza dos Recursos

- Exclusão do alarme no CloudWatch  
- Exclusão do tópico SNS  
- Exclusão da trilha CloudTrail  
- Exclusão do bucket S3 (esvaziando antes)  
- Finalização da instância EC2

---

## 👨‍🏫 Formação: **Escola da Nuvem**  
Professora: **Joao Gaioso**  
Turma: **DPCN**

---

## ✍️ Autor

**Vinicius Santos**  
Turma DPCN – Escola da Nuvem  
