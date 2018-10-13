#write your code here

def translate(string)
    
    
    word_length = 1
    
        if string.match(/\s/)
    
            spaces = string.split(" ")
            word_length = spaces.length.to_i
        end
    
    if word_length == 1 
    
    vowels = %w(a e i o u)
    
    q_translate = 0
    
    q_check = %w(q)
    
    u_check = %w(u)
    
    (q_check.include?(string[0])&&u_check.include?(string[1])) ? q_translate = 1 : q_translate = 0
    #checks for words that start with qu i.e. quick 
    
    if q_translate == 1
        string += string.slice(0,2) + "ay"
        string.slice!(0,2)
        return string
    end
    
    start_with_vowel = -1
    
    vowels.include?(string[0]) ? start_with_vowel = 1 : start_with_vowel = 0

    
    if start_with_vowel == 0 
        if vowels.include?(string[1]) ? two_consonants = 0 : two_consonants = 1
        end
    end
    
    if two_consonants == 1
        (q_check.include?(string[1])&&u_check.include?(string[2])) ? q_translate = 2 : q_translate = 0
        #checks for words that start a consonant followed by qu i.e. square
        if q_translate == 2
            string += string.slice(0,3) + "ay"
        string.slice!(0,3)
        return string
    end
        if vowels.include?(string[2])
        string += string.slice(0,2) + "ay"
        string.slice!(0,2)
        return string
    else 
        string += string.slice(0,3) + "ay"
        string.slice!(0,3)
        return string
    end
    end
    
   
    string += vowels.include?(string[0]) ? 'ay' : string[0] + 'ay'
    
    if start_with_vowel == 0 
        string.slice!(0)
        return string
    end
    
    if start_with_vowel == 1
        return string
    end
    
    end
    
    if word_length > 1
        array_of_words = string.split(" ")
        new_array = []
        iteration = 0
        word_length.times do
            new_array.push translate(array_of_words[iteration])
            iteration += 1
        end
        string = new_array.join(" ")
        return string
    end
        
   
end

