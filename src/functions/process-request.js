
exports.lambdaHandler = async (event, context) => {
  console.log(event.Records)
  try {
    const result = "Processando o pedido"
    context.succeed(result);
  } catch (error) {
    context.fail(error);
  }
};
