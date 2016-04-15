require 'httparty'
require 'json'

puts "What is the repository owner's username?"
print "Owner Username: "
username=gets.chomp.downcase

puts "What is the repository's name?"
print "Repository's name: "
repository_name=gets.chomp

response = HTTParty.get("https://api.github.com/repos/#{username}/#{repository_name}/commits")
body = JSON.parse response.body
# puts body.class
body=commits
puts commits.last
puts commits.last[-2]
# puts body
# puts response
