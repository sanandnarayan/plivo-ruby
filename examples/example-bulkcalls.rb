#!/usr/bin/env ruby

require 'plivo'

# Plivo Account AUTH_ID and AUTH_TOKEN
AUTH_ID = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
AUTH_TOKEN = 'YYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY'

# Create a REST object
plivo = Plivo::Rest.new(AUTH_ID, AUTH_TOKEN)


# Initiate a new outbound call to user/1000 using a HTTP POST
# All parameters for bulk calls shall be separated by a delimeter
call_params = {
    'Delimiter' => '>', # Delimter for the bulk list
    'From'=> '919191919191', # Caller Id
    'To' => '1000>1000', # User Numbers to Call separated by delimeter
    'AnswerUrl' => "http://www.example.com/answered/",
    'HangupUrl' => "http://www.example.com/hangup/",
    'RingUrl' => "http://www.example.com/ringing/",
#    'TimeLimit' => '10>30',
#    'HangupOnRing' => "0>0",
}

request_uuid = ""

#Perform the Call on the Rest API
begin
    result = plivo.bulk_call(call_params).body
rescue Exception=>e
    print e
end

print result
