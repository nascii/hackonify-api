var mrClient;

mrClient = rootRequire("mandrill/client");

module.exports = function(email, url, callback) {
  var message, messageBody, template_content, template_name;
  callback = makeRunnable(callback);
  messageBody = "Здравствуйте!\n";
  template_name = "verify-email";
  template_content = [];
  message = {
    "to": [
      {
        "email": email
      }
    ],
    "headers": {
      "Reply-To": "support@brainarium.ru"
    },
    "important": true,
    "merge": true,
    "global_merge_vars": [
      {
        "name": "url",
        "content": url
      }
    ]
  };
  return mrClient.messages.sendTemplate({
    "template_name": template_name,
    "template_content": template_content,
    "message": message,
    "async": true
  }, function(result) {
    return callback(false, result);
  }, function(error) {
    return callback(error);
  });
};
