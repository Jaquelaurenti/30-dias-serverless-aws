
## 30 dias de Serverless AWS

  

### Dia 01

- Crie e implante uma função Lambda simples que retorne "Olá, mundo!" quando invocada.

  

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
### Testando a aplicação 

Agora nossa infraestutura estará provisionada, vamos invocar nossa função lambda.
```  
aws lambda invoke --function-name hello-world-lambda output.txt
```  
Será criado um arquivo output.txt com a mensagem "Hellor World".

### Removendo a infraestrutura
```  
terraform destroy
```  