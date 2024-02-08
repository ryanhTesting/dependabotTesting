require 'mysql2'

client = Mysql2::Client.new(:host => "localhost", :username => "root", :password => "hardcoded_password") # Hardcoded password

results = client.query("SELECT * FROM users")
results.each do |row|
  puts row
end

client.close
