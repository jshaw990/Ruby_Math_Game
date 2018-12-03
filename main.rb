# Not Ready
def end_point 
    puts "DONE"
end

# Ready
def start_point
    puts "Lets Go!"
    question
end

# Question
def question
    
end

# Initialize - Players Names - Ready to Start?
def initialize_game
    puts "Enter Player One's Name"
    print ">"
    p1 = $stdin.gets.chomp
    puts "Enter Player Two's Name"
    print ">"
    p2 = $stdin.gets.chomp
    puts "Welcome #{p1} & #{p2}.\nYou each start with three lives.\nYou'll take turns selecting a number between 1 and 20.\nIf you answer the question incorrectly you lose a life.\nFirst to lose all three lives loses the game."
    puts "Ready to get started?"
    print ">"
    start = $stdin.gets.chomp
        if start == "yes" || start == "y" || start == "yeah"
            start_point
        else 
            puts "...Alright then, comeback when you are"
            end_point
        end 
end

# Initial Method Call 
initialize_game