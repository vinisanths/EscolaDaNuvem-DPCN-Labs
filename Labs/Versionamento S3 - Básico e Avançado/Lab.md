# ☁️ Laboratório – Amazon S3: Básico e Avançado

Este laboratório foi desenvolvido como parte da formação da **Escola da Nuvem**, com orientação do professor **João Gaioso**, e tem como objetivo explorar recursos avançados do **Amazon S3** relacionados à **segurança, versionamento, otimização de custos e compartilhamento seguro de arquivos**.

---

## 🎯 Objetivo

Aprender a usar os principais recursos do Amazon S3, incluindo:

- ✅ **Versionamento de objetos** (gerenciamento de múltiplas versões)
- ✅ **Regras de ciclo de vida** (transição e expiração de arquivos)
- ✅ **URLs pré-assinadas** (compartilhamento seguro e temporário)

---

## 📦 Cenário

Você é o responsável pelo armazenamento em nuvem da empresa e precisa garantir que os arquivos estejam:

- Organizados
- Seguros contra perda ou acesso não autorizado
- Armazenados de forma **econômica**
- Acessíveis de forma controlada e temporária

---

## 🛠️ Atividades Realizadas

### 1. Criação do Bucket
- Região: us-east-1 (Norte da Virgínia)
- Nome exclusivo com padrão: `vinicius-bucket-lab3`
- Acesso público bloqueado
- Criptografia ativada (SSE-S3)

### 2. Upload de Arquivo e Versionamento
- Criação do arquivo `Lab3.txt`
- Upload da primeira versão
- Habilitação do **versionamento**
- Upload da segunda versão (conteúdo alterado)
- Visualização do histórico de versões e **restauração**

### 3. Regra de Ciclo de Vida
- Transição para **S3 Glacier Instant Retrieval** após 30 dias
- Expiração automática após 31 dias
- Exclusão de versões não ativas após 1 dia

### 4. URLs Pré-assinadas
- Geração de link temporário para o objeto `Lab3.txt`
- Teste em janela anônima (simulação de acesso externo)
- Expiração automática do link

---

## 🔐 Boas Práticas Aplicadas

- Bloqueio de acesso público
- Criptografia de objetos
- Uso de versionamento para proteção contra sobrescritas e exclusões
- Regras de ciclo de vida para otimização de custos
- Compartilhamento seguro com **URLs temporárias**

---

## 🧠 Conclusão

Este laboratório reforça os pilares do armazenamento moderno em nuvem com o Amazon S3:

- **Segurança**
- **Disponibilidade**
- **Escalabilidade**
- **Custo-benefício**

Ao aplicar versionamento, regras de ciclo de vida e URLs pré-assinadas, foi possível construir uma solução eficiente, controlada e segura.

---

## 👩‍🏫 Formação: Escola da Nuvem  
Professor: João Gaioso  
Turma: DPCN

---

## ✍️ Autor

**Vinicius Santos**  
Turma DPCN – Escola da Nuvem  
