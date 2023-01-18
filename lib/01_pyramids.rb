def half_pyramid
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (Entre 1 et 25)"
    print "> "
    floors = gets.chomp.to_i
    pyramid = Array.new(floors)

    for i in 1..floors do
        pyramid[i] = " " * (floors - i) + "#" * i
    end
    puts pyramid
end

def full_pyramid
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (Entre 1 et 25)"
    print "> "
    floors = gets.chomp.to_i
    pyramid = Array.new(floors)

    for i in 1..floors do
        pyramid[i] = " " * (floors - i) + "#" * (i * 2 - 1)
    end
    puts pyramid
end

def wtf_pyramid
    correct = false
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (Choisis un nombre impair entre 1 et 25)"
    print "> "

    while correct == false
        floors = gets.chomp.to_i
        if floors.even? or floors < 1 or floors > 25
            puts "Donne un nombre impair entre 1 et 25 :"
            correct = false
        else
            correct = true
        end
    end

    half_losange = floors/2 + 1
    pyramid = Array.new(floors)

    max = floors
    for i in 1..floors do
        if i <= half_losange
            pyramid[i] = " " * (floors - i) + "#" * (i * 2 - 1)
        else
            max -= 2
            pyramid[i] = " " * (i - 1) + "#" * max
        end
    end
    puts pyramid
    
end

wtf_pyramid
