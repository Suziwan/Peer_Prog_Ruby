
    correct = false
    puts "Define a password :"
    print "> "
    password = gets.chomp
    puts "Type your password :"
    print "> "
    
    
    while correct == false
        password_check = gets.chomp
        if password_check != password
            puts "Wrong password, try again :"
            correct = false
        else
            puts "Welcome !"
            correct = true
        end
    end

