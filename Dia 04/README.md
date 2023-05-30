
## 30 dias de Serverless AWS

  

### Dia 04

Dia 4: Implemente um webhook usando o AWS Lambda e o Amazon API Gateway para receber e processar dados externos.
  

### Pré Requisitos

- [x] Terraform Configurado

- [x] AWS CLI Configurado

- [x] NodeJS > 14

### Como instalar ?
- Verifique primeiro de o AWS Cli está devidamente configurado com as credentials válida.

```  
cd Dia 04
npm i
```
Desta forma, seu pacote de função estará válido.

Agora precisamos provisionar a infraestrutura.
```  
terraform init
terraform apply
```

### Testando 
- Obtenha a URL do webhook: Após a execução bem-sucedida do comando terraform apply, você receberá a URL do webhook como saída. Anote essa URL, pois você a usará nos passos a seguir.

- Use uma ferramenta de teste de API, como o cURL ou o Postman, para enviar uma solicitação POST para a URL do webhook com os dados que deseja processar.
  
```  
curl -X POST -H "Content-Type: application/json" -d '{"key": "value"}' <insira aqui a url gerada através do terraform apply>

```
- Verifique os logs do Lambda: O Lambda registrará os logs no CloudWatch. Você pode acessar os logs por meio do console da AWS ou usando a AWS CLI com o seguinte comando:

```  
aws logs get-log-events --log-group-name /aws/lambda/webhook_lambda--log-stream-name <nome-do-log-stream>

Obs: Você pode encontrar o nome do log stream no console do CloudWatch.

```  

- Verifique a resposta: Se o webhook for processado com sucesso, você receberá uma resposta com status 200 indicando que o processamento foi concluído. 
- Verifique a resposta recebida da solicitação para confirmar o processamento correto.