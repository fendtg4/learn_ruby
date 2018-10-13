
def echo(string)
    return string
end

def shout(string)
    string = string.upcase
    return string
end

def repeat(string, number= nil)
    puts number
    if number == nil 
    return string + " " + string
    else 
        new_string = ""
        i = 0
        loop do 
        new_string += string + " "
        i += 1
        break if i>=number
        end
    return new_string.chop
end

end

def start_of_word(string, number)
    return string[0, number]
end


def first_word(string)
    word = string.split(" ")
    return word.first
end

def titleize(string)
     capitalized = string.split.map { |x| x.capitalize }.join(" ")
     exception_check = capitalized.split(" ")
     exception_words = ["A", "An", "The", "And", "In", "By", "For", "With","Of", "Over", "To"]
    exception_check.each do |words|
        if exception_words.include?(words)
            words.downcase!
        end
    end
    exception_check.first.capitalize!
    exception_check.last.capitalize!
    return exception_check.join(" ")
    
end
