mrClient = rootRequire "mandrill/client"
module.exports = (email, url, callback) ->

  callback = makeRunnable callback

  messageBody = "Здравствуйте!\n"
  template_name = "verify-email"
  template_content = []
  message = 
    "to":[
      "email": email
    ]
    "headers":
      "Reply-To": "support@brainarium.ru"

    "important": true
    "merge" : true
    "global_merge_vars": [
        {
          "name": "url"
          "content":url
        }
      ]

  mrClient.messages.sendTemplate
      "template_name": template_name
      "template_content": template_content
      "message": message
      "async": true
    , (result) ->
        callback false, result
    , (error) ->
        callback error