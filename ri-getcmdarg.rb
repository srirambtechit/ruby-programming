#!/usr/bin/ruby

require 'getoptlong'

# Call using below mention way
# The parameters can be in any order
unless ARGV.length == 8
  puts "Usage: ri-getcmdarg.rb -n port_no -u sriram -p password -h ftp_site_url"
  puts "Usage: ri-getcmdarg.rb --port 80 --username sriram --password password --hostname ftp_site_url"
  exit
end

host_name = user_name = password = port_no = ""

# Specify the options we accept and initialize the option parser
opts = GetoptLong.new(
["--hostname", "-h", GetoptLong::REQUIRED_ARGUMENT],
["--username", "-u", GetoptLong::REQUIRED_ARGUMENT],
["--password", "-p", GetoptLong::REQUIRED_ARGUMENT],
["--port", "-n", GetoptLong::REQUIRED_ARGUMENT]
)

# process the parsed options
opts.each do | option, arg |
  case option
    when "--hostname"
      host_name = arg
    when "--username"
      user_name = arg
    when "--password"
      password = arg
    when "--port"
      port_no = arg
  end
end

puts "Host: #{host_name}"
puts "Username: #{user_name}"
puts "Password: #{password}"
puts "Url: #{port_no}"

