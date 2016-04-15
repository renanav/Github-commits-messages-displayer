require 'httparty'
require 'json'

puts "What is the repository owner's username?"
print "Owner Username: "
username=gets.chomp.downcase

puts "What is the repository's name?"
print "Repository's name: "
repository_name=gets.chomp

response = HTTParty.get("https://api.github.com/users/repos/#{username}/#{repository_name}/commits/sha")
response = JSON.parse(page)
puts page.class
