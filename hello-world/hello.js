// Lambda function code
// Todo

module.exports.handler = async (event) => {
  console.log('Event: ', event);
  return {
    statusCode: 200,
    headers: {
      'Content-Type': 'application/json',
      "Access-Control-Allow-Origin": "*",  
      "Access-Control-Allow-Methods": "OPTIONS,POST,GET"
    },
    body: JSON.stringify({
      message: "hi",
    }),
  }
}
