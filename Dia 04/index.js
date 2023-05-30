exports.handler = async (event) => {
  console.log("Evento recebido:", event);

  // Processar os dados do evento
  // ...

  return {
    statusCode: 200,
    body: "Webhook processado com sucesso",
  };
};
