#!/usr/bin/ruby
require 'json'
require 'pp'

APP_CMD = ARGV[0].strip
INSTANCE = ARGV[1].strip
bash_check = `i3-msg -t "get_tree" | grep '"instance":"#{INSTANCE}"'`

if(bash_check.nil? || bash_check.empty?)
  `i3-msg exec #{APP_CMD}`
end
