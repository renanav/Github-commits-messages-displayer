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

# body.map {|item| item['commit']}.map {|item| item['message']}.map {|msg| puts msg}
# Make it batter and nicer
body.each do |item|
  puts item['commit']['message']
end
