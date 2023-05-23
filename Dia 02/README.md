
## 30 dias de Serverless AWS

  

### Dia 02

- Configure um evento agendado (cron) para sua função Lambda, que seja acionado a cada 5 minutos.

  

### Pré Requisitos

- [x] Terraform Configurado

- [x] AWS CLI Configurado

- [x] NodeJS > 14

### Como instalar ?
- Verifique primeiro de o AWS Cli está devidamento configurado com as credentials válida.

```  
cd Dia 01
npm i
```
Desta forma, seu pacote de função estará válido.

Agora precisamos provisionar a infraestrutura.
```  
terraform init
terraform apply
```

### Validando os Logs
- Abra o Console de Gerenciamento da AWS em https://console.aws.amazon.com/.

- Navegue até o serviço AWS Lambda.

- Selecione a função Lambda que você provisionou (no exemplo acima, seria "hello-world-lambda").

- No painel de detalhes da função Lambda, clique na guia "Monitoramento".

- Role para baixo até a seção "Registros" e clique no link do log.

- Isso abrirá o Amazon CloudWatch Logs Console, onde você poderá ver os logs gerados pela função Lambda.

- Aguarde alguns minutos para que o evento agendado acione a função Lambda. Você deve ver entradas de log correspondentes às execuções da função.