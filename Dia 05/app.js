require('dotenv').config();
const express = require('express');
const multer = require('multer');
const AWS = require('aws-sdk');

// Configuração da AWS
const s3 = new AWS.S3({
  accessKeyId: process.env.AWS_ACCESS_KEY_ID,
  secretAccessKey: process.env.AWS_SECRET_ACCESS_KEY,
  region: process.env.AWS_REGION
});

// Configuração do multer para fazer o upload dos arquivos
const storage = multer.memoryStorage();
const upload = multer({ storage });

// Configuração do Express
const app = express();
const port = 3000;

app.post('/upload', upload.single('file'), (req, res) => {
  const file = req.file;

  // Defina o nome do arquivo no S3
  const fileName = `uploads/${file.originalname}`;

  // Configuração dos parâmetros do S3
  const params = {
    Bucket: process.env.S3_BUCKET_NAME,
    Key: fileName,
    Body: file.buffer,
    ACL: 'public-read' // Define a permissão de acesso como público
  };

  // Faz o upload do arquivo para o S3
  s3.upload(params, (err, data) => {
    if (err) {
      console.error(err);
      res.sendStatus(500);
    } else {
      console.log('Arquivo enviado com sucesso:', data.Location);
      res.sendStatus(200);
    }
  });
});

app.listen(port, () => {
  console.log(`Aplicação rodando em http://localhost:${port}`);
});
