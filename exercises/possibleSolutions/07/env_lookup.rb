#!/usr/bin/env ruby       

require "script.rb"

if ARGV.count != 1
  puts "This script looks up the value of an env variable. Usage: ruby script.rb ENV_VALUE_NAME"
  exit
end
    
puts lookup_env_variable("PATH")



