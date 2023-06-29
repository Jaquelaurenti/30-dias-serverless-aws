## Aplicação Node.js com Amazon S3
Esta é uma aplicação Node.js que utiliza o Amazon S3 para armazenar arquivos estáticos, como imagens. A infraestrutura necessária é provisionada usando o Terraform.

### Pré-requisitos
Antes de prosseguir, certifique-se de ter o seguinte instalado em seu ambiente de desenvolvimento:

- [x] Terraform Configurado

- [x] AWS CLI Configurado

- [x] NodeJS > 14
  
- [x] Credenciais da AWS com acesso ao serviço S3


Siga estes passos para configurar e executar a aplicação:

Crie o arquivo .env na raiz do projeto e adicione as seguintes configurações:
```  
AWS_ACCESS_KEY_ID=your-access-key-id
AWS_SECRET_ACCESS_KEY=your-secret-access-key
AWS_REGION=your-aws-region
S3_BUCKET_NAME=your-bucket-name
```  
Certifique-se de substituir your-access-key-id, your-secret-access-key, your-aws-region e your-bucket-name pelas informações corretas da sua conta e aplicação.

Provisione a infraestrutura usando o Terraform:
```  
terraform init
terraform apply
```  
Certifique-se de ter configurado corretamente as suas credenciais da AWS e o arquivo main.tf com as informações corretas do bucket S3.

Execute a aplicação Node.js:
```  
node app.js

```  
A aplicação estará rodando em http://localhost:3000.

## Testando a aplicação

Siga estes passos para testar a aplicação:

Acesse a URL http://localhost:3000 em seu navegador para verificar se a aplicação está em execução corretamente.

Prepare um arquivo estático, como uma imagem, que você deseja fazer o upload para o Amazon S3. Lembre-se do nome e localização do arquivo.

Abra o arquivo HTML de upload em seu navegador. Para isso, você pode usar o seguinte comando em um novo terminal:

```  
open upload.html
```  
No formulário HTML aberto, selecione o arquivo que deseja enviar e clique no botão "Enviar".

Volte para o console do terminal onde a aplicação Node.js está sendo executada. Você verá mensagens indicando o sucesso do upload do arquivo para o Amazon S3, juntamente com a URL de acesso público do arquivo.

Acesse a URL fornecida pelo console, que deve apontar para o arquivo estático armazenado no Amazon S3.

Lembre-se de substituir seu-usuario e nome-do-repositorio pelos valores corretos do seu usuário do GitHub e do repositório em que você clonou este projeto.

Certifique-se de adaptar os nomes de arquivos, URLs e outras configurações conforme sua própria aplicação e preferências.

