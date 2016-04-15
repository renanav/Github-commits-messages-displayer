require 'httparty'
require 'json'

puts `say What is the repository owners username?`
print "Owner Username: "
username=gets.chomp.downcase

puts "What is the repository's name?"
print "Repository's name: "
repository_name=gets.chomp

response = HTTParty.get("https://api.github.com/repos/#{username}/#{repository_name}/commits")
body = JSON.parse response.body
puts body.class
puts body[0]
puts body[3]
