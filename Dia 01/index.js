const AWS = require('aws-sdk');

exports.handler = async (event, context) => {
  try {
    const s3Event = event.Records[0].s3;

    const bucketName = s3Event.bucket.name;
    const objectKey = s3Event.object.key;

    console.log(`Novo objeto criado: ${objectKey} no bucket: ${bucketName}`);

    const targetBucket = 'bucket-copy-dia-01';
    const s3 = new AWS.S3();
    await s3.copyObject({ Bucket: targetBucket, CopySource: `${bucketName}/${objectKey}`, Key: objectKey }).promise();

    return 'Processamento concluído com sucesso!';
  } catch (error) {
    console.error('Ocorreu um erro:', error);
    throw error;
  }
};
