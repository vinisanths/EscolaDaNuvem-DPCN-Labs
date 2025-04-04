## Laboratório Prático: Integração de Amazon S3 com SNS e SQS para Monitoramento e Registro de Eventos

Este repositório contém a implementação completa de um laboratório prático realizado como parte da formação **Descomplicando a Nuvem (DPCN)** da **Escola da Nuvem**. O objetivo foi construir uma solução que monitora e registra eventos em tempo real em um bucket S3, utilizando os serviços **SNS (Simple Notification Service)** e **SQS (Simple Queue Service)** da AWS.

### 🧩 Cenário Proposto:
Você trabalha em uma empresa de mídia que armazena imagens e vídeos em um bucket S3. O time precisa ser notificado sempre que arquivos forem adicionados ou excluídos do bucket, além de manter um registro para auditoria futura.

### 🔧 Componentes da Solução:
- **Amazon S3**: Armazena os arquivos e dispara eventos para outros serviços.
- **Amazon SNS**: Envia notificações por e-mail para alertar sobre as ações no bucket.
- **Amazon SQS**: Armazena os eventos de forma estruturada (JSON) para consultas e integrações futuras.

### ✅ Tarefas Realizadas:
- Criação e configuração de um bucket S3 com eventos para uploads e deletes.
- Criação de um tópico SNS com:
  - Assinatura de e-mail (validação por link).
  - Assinatura por SQS (fila conectada para receber mensagens).
- Criação de uma fila SQS com política personalizada.
- Configuração das políticas de segurança (IAM) para autorizar a comunicação entre S3, SNS e SQS.
- Testes de envio e exclusão de arquivos, com validação de notificações por e-mail e inspeção das mensagens na fila.
- Limpeza dos recursos para evitar custos desnecessários.

### 🎯 Objetivos de Aprendizado:
- Entender a integração entre serviços gerenciados da AWS.
- Trabalhar com notificações e eventos baseados em ação.
- Criar uma arquitetura de eventos serverless com boa governança e segurança.
- Aplicar boas práticas em controle de custos e remoção de recursos.

> Essa prática fortalece o entendimento de **arquiteturas orientadas a eventos**, monitoramento inteligente em nuvem e automações com serviços gerenciados da AWS.