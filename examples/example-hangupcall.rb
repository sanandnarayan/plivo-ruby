require 'plivocldhelper'


# Sid and AuthToken
SID = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
AUTH_TOKEN = 'YYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY'

# Create a REST object
plivo = Plivo::Rest.new(SID, AUTH_TOKEN)

# Hangup a call using a HTTP POST
hangup_call_params = {
    'CallUUID' => 'edaa59e1-79e0-41de-b016-f7a7570f6e9c', # Request UUID to hangup call
}

#Perform a hangup on a Call
begin
    print plivo.hangup_call(hangup_call_params).body
rescue Exception=>e
    print e
end
