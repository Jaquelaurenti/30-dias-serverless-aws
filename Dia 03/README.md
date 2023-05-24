
## 30 dias de Serverless AWS

  

### Dia 03

- Crie uma API RESTful usando o Amazon API Gateway e conecte-a a uma função Lambda.
  

### Pré Requisitos

- [x] Terraform Configurado

- [x] AWS CLI Configurado

- [x] NodeJS > 14

### Como instalar ?
- Verifique primeiro de o AWS Cli está devidamento configurado com as credentials válida.

```  
cd Dia 03
npm i
```
Desta forma, seu pacote de função estará válido.

Agora precisamos provisionar a infraestrutura.
```  
terraform init
terraform apply
```

### Testando 
- Após a conclusão do comando terraform apply, o Terraform fornecerá a URL de endpoint para sua API.

- Use um navegador ou ferramentas como cURL ou Postman para enviar solicitações HTTP para a URL de endpoint da API e verifique se ela está funcionando corretamente.