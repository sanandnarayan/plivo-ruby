require 'plivocldhelper'

# Sid and AuthToken
SID = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
AUTH_TOKEN = 'YYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY'

# Create a REST object
plivo = Plivo::Rest.new(SID, AUTH_TOKEN)

# Transfer a call using a HTTP POST
transfer_call_params = {
    'Url' => "http://127.0.0.1:5000/transfered/",
    'CallUUID' => 'edaa59e1-79e0-41de-b016-f7a7570f6e9c', # Request UUID to hangup call
}

#Perform a hangup on a Call
begin
    print plivo.transfer_call(transfer_call_params).body
rescue Exception=>e
    print e
end
