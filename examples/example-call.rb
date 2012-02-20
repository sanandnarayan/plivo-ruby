require 'plivo'

# Plivo Account AUTH_ID and AUTH_TOKEN
AUTH_ID = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
AUTH_TOKEN = 'YYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY'

# Create a REST object
plivo = Plivo::Rest.new(AUTH_ID, AUTH_TOKEN)

# Initiate a new outbound call to user/1000 using a HTTP POST
call_params = {
    'From'=> '919191919191', # Caller Id
    'To' => '1567786123', # User Number to Call
    'AnswerUrl' => "http://www.example.com/answered/",
    'HangupUrl' => "http://www.example.com/hangup/",
    'RingUrl' => "http://www.example.com/ringing/",
}

request_uuid = ""

#Perform the Call on the Rest API
begin
    result = plivo.call(call_params).body
rescue Exception=>e
    print e
end

print result

if false:
    sleep(10)
    # Hangup a call using a HTTP POST
    hangup_call_params = {
        'RequestUUID' => request_uuid.strip(), # Request UUID to hangup call
    }

    #Perform the Call on the Rest API
    begin
        print plivo.hangup_call(hangup_call_params)
    rescue Exception=>e
        print e
    end
end
