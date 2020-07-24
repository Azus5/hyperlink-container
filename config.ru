# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'

run Rails.application
Launchy.open("http://localhost:#{Rack::Server.new.options[:Port]}") if Rails.env.development?