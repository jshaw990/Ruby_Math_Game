# Not Ready
def end_point 
    puts "DONE"
end

# Ready
def start_point
    @p1_lives = 3
    @p2_lives = 3
    puts "Lets Go!"
    @quest_num = 0
    question
end

# Question
def question
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @cor_ans = @num1 + @num2
    @quest_num = +1
    if @quest_num.even?
        puts "#{@p2}'s Turn"
    else 
        puts "#{@p1}'s Turn"
    end
    puts "Question #{@quest_num}: What is #{@num1} + #{@num2}"
    print ">"
    quest_ans = $stdin.gets.chomp.to_i
    if @cor_ans == quest_ans
        puts "Correct"
        tally
    else 
        puts "Oh boy... Correct answer is #{@num1 + @num2}"
        tally
    end
end

def tally
    
end

# Initialize - Players Names - Ready to Start?
def initialize_game
    puts "Enter Player One's Name"
    print ">"
    @p1 = $stdin.gets.chomp
    puts "Enter Player Two's Name"
    print ">"
    @p2 = $stdin.gets.chomp
    puts "Welcome #{@p1} & #{@p2}.\nYou each start with three lives.\nYou'll take turns answering a simple addition problem.\nIf you answer the question incorrectly you lose a life.\nFirst to lose all three lives loses the game."
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