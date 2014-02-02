{GCM} = require 'gcm'

apiKey = 'fill-in-your-api-key'
gcm = new GCM apiKey

message =
  registration_id: 'fill-in-your-registration-id'
  collapse_key: 'Collapse key'
  'data.key1': 'value1'
  'data.key2': 'value2'

gcm.send message, (err, messageId) ->
  if err
    console.log "Something has gone wrong!"
  else
    console.log "Sent with message ID: ", messageId
