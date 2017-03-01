#!/opt/chef/embedded/bin/ruby

require 'hash'
require 'json'
require 'rest-client'
require "highline/import"
require "/home/ksquires/repos/ruby/config.rb"

domain = '.jsontest.com'
apicall = ask 'API: '
url = 'http://' + apicall + domain


result = get_json("#{url}")
#puts url
puts JSON.pretty_generate(result)

#org_list = id_name_map(orgs['results'])

keys = result.keys

puts "#{keys}"

puts "#{result['Host']}"
