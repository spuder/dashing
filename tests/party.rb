require 'httparty'

$end_time = Time.new + 25 * 60

puts $end_time
HTTParty.post('http://localhost:3030/widgets/welcome',
  :body => { auth_token: "YOUR_AUTH_TOKEN", text: $end_time }.to_json)
