class Book
    
    def title 
        @title
    end
    
    def title=(title)
        exceptions = %w(and or in the of a an)
        @title = title.split.map{|w| exceptions.include?(w) ? w : w.capitalize}.join(' ')
        @title[0] = title[0].capitalize!
        puts @title
    end
    
end
