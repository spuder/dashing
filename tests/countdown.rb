#!/usr/bin/env ruby
require 'httparty'

$the_time = Time.now
$end_time = $the_time + 25 * 60
$widget   = 'pomodoro'

puts $the_time
puts $end_time
puts $widget

puts "Sending "  + $end_time.strftime("%d-%b-%Y %k:%M:%S").to_s


# HTTParty.post("http://localhost:3030/widgets/" + $widget.to_s,
#   :body => { auth_token: "YOUR_AUTH_TOKEN", title: "hey look what I can do" }.to_json)


# HTTParty.post("http://localhost:3030/widgets/" + $widget.to_s,
#   :body => { auth_token: "YOUR_AUTH_TOKEN", data-end: $end_time.strftime("%d-%b-%Y %I:%M:%S").to_s }.to_json)

# $end_time = "31-May-2014  14:36:21"
# puts "really sending "  + $end_time
# HTTParty.post("http://localhost:3030/widgets/" + $widget.to_s,
#   :body => { auth_token: "YOUR_AUTH_TOKEN", end: $end_time }.to_json)

# puts "likes time like 31-May-2014  14:36:21"
HTTParty.post("http://localhost:3030/widgets/" + $widget.to_s,
  :body => { auth_token: "YOUR_AUTH_TOKEN", end: $end_time.strftime("%d-%b-%Y %k:%M:%S").to_s }.to_json)













# Date is formatted 
# `date  +" %d-%b-%Y  %I:%M:%S"`
# 31-May-2014  12:36:21

# puts $the_time.strftime("%d-%b-%Y %I:%M:%S")