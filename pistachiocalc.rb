require 'colorized_string'

def pist_dab
puts ColorizedString["how many pistachios have you eaten?"].colorize(:green)
pistachios = gets.chomp.to_i
puts ColorizedString["You should dab for #{pistachios * 180/175} minutes to burn that off. But also body positivity, so no pressure. We love you just the way you are!"].colorize(:green)
end

puts ColorizedString["Welcome to the ULTIMATE Pistachio Calculator. Please crack your first shell(number)."].colorize(:green)
a = gets.chomp.to_f

puts ColorizedString["What mode of cracking(operation) would you like to use (+, -, *, /, **, %, root, clear, calories)?"].colorize(:green)
op = gets.chomp
puts ColorizedString["Please crack your second shell(number). If you are using a root, enter what kind (3 for cube root, 2 for square)"].colorize(:green)
b = gets.chomp.to_f 


def pcalc(a,op,b)
    if op == "clear"
        a = 0
        b = 0
        output = "You're out of pistachios!"
    end
    if op == "+"
        output = a + b
        print ColorizedString["#{output} pistachios. "].colorize(:green)
    elsif op == "-"
        output = a - b
        print ColorizedString["#{output} pistachios. "].colorize(:green)
    elsif op == "*"
        output = a * b
        print ColorizedString["#{output} pistachios. "].colorize(:green)
    elsif op == "/"
        output = a / b
        print ColorizedString["#{output} pistachios. "].colorize(:green)
    elsif op == "%"
        output = a % b
        print ColorizedString["#{output} pistachios. "].colorize(:green)
    elsif op == "**"
        output = a ** b
        print ColorizedString["#{output} pistachios. "].colorize(:green)
    elsif op == "root"
        output = a**(1/b)
        print ColorizedString["#{output} pistachios. "].colorize(:green)
    elsif op == "clear"
        a = 0
        b = 0
        output = ColorizedString["You're out of pistachios!"].colorize(:green)
    elsif op == "calories"
        puts pist_dab
    else
        puts ColorizedString["Wrong cracking technique(operation)"].colorize(:green)
    end
    if op == "clear"
        a = 0
        b = 0
        output = ColorizedString["You're out of pistachios!"].colorize(:green)
    end
    until (op == "clear") || (op == "calories")
        a = output
        puts ColorizedString["What mode of cracking(operation) would you like to use (+, -, *, /, **, %, root, clear)?"].colorize(:green)
        op = gets.chomp
            if op == "clear"
                a = 0
                b = 0
                output = ColorizedString["You're out of pistachios!"].colorize(:green)
            elsif op == "calories"
            puts pist_dab
            else
                puts ColorizedString["Please crack your second shell(number). If you are using a root, enter what kind (3 for cube root, 2 for square)"].colorize(:green)
                b = gets.chomp.to_f 
                pcalc(a,op,b)
            end
    end
end

puts pcalc(a,op,b)



# def adds(a,b)
#     a + b
# end

# def subtract(a,b)
#     a - b
# end 

# def multiply(a,b)
#     a * b
# end 

# def div(a,b)
#     a / b
# end 