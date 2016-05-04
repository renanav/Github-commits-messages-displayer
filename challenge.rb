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

# This loop will iterate over the array that the body contain, and will `puts` all of the `message` values
body.each do |item|
  puts item['commit']['message']
end
