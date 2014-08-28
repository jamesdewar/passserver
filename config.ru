#
#  config.ru
#  Pass Server reference implementation
#
#  Copyright (c) 2012 Apple, Inc. All rights reserved.
#
require './pass_server'
# Used to implement HTTP PUT and DELETE with HTTP POST and _method
use Rack::MethodOverride

# Pass Server Settings
PassServer.set :hostname, "jamesd.local"
PassServer.set :port, 3000
PassServer.set :pass_type_identifier, "pass.com.test.ividata"
PassServer.set :team_identifier, "QD2D8W54YW"

# Ask user for certificate password
puts "Please enter your certificate password: "
password_input = gets.chomp
PassServer.set :certificate_password, password_input

run PassServer