# Authenticator App

users = [
    { username: "scott", password: "pass1" },
    { username: "hulk", password: "smash" },
    { username: "cptamerica", password: "nottoday" },
    { username: "ironman", password: "iamironman" },
    { username: "thor", password: "odonson" }
]

def auth_user(username, password, list_of_users)
    list_of_users.each do |user_record|
        if user_record[:username] == username && user_record[:password] == password
            return user_record
        end
    end
    "incorrect, try again"
end

puts "Welcome to the authenticator"
25.times { print "_" }
puts
puts "This program will take input from the user and compare passwords"
puts "If the password is correct, you will get back an object"
puts "If after 3 tries the password is still incorrect, the program will exit"

attempts = 1

while attempts < 3
    puts "Enter username"
    username = gets.chomp
    puts "Enter password"
    password = gets.chomp
    authentication = auth_user(username, password, users)
    puts authentication
    puts "press n to quit or any other key to continue"
    input = gets.chomp.downcase
    break if input == "n"
    attempts += 1
end
puts "You have exceeded my good graces, be gone with you" if attempts == 3
