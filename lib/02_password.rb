def sign_up
    puts "Define a password :"
    print "> "
    password = gets.chomp
    return password
end

def login
    puts "Type your password :"
    print "> "
    password_check = gets.chomp
    return password_check
end

def welcome_screen
    puts "Welcome !"
end

def perform
    correct = false
    sign_up
    login
    while correct == false
        password_check = gets.chomp
        if password_check != password
            puts "Wrong password, try again :"
            correct = false
        else
            correct = true
        end
    end
end

sign_up
login
correct = false
while correct == false
    password_check = gets.chomp
    if password_check != password
        puts "Wrong password, try again :"
        login
        correct = false
    else
        puts "Welcome !"
        correct = true
    end
end