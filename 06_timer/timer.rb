class Timer
  def seconds
    @seconds = 0
  end
    def seconds=(seconds)
        @seconds = seconds
        if @seconds > 60
            @minutes_given = @seconds / 60
            @seconds = @seconds % 60
            @seconds_over_60 = true
        end
    end
    
    
    
     def minutes
        @minutes = 0
         if @seconds_over_60
            @minutes = @seconds / 60 
            @minutes = @minutes_given
         
             if @minutes > 60
                 
                 @hours_given = @minutes / 60
                 @minutes_over_60 = true
                 @minutes = @minutes % 60
             else
                
                 @minutes = @minutes_given
             end
    else   
        @minutes = 0
        end
    end
    
    def hours
        @hours = 0
        if @minutes_over_60
            @hours = @hours_given
    else
        @hours = 0
        end
    end
   
    
    
    def time_string
      
        puts @minutes
        if @seconds.to_s.to_i < 10
            @seconds_string = "0" + @seconds.to_s
            if @seconds_string.length > 2
                @seconds_string.slice!(0)
            end
        else 
            @seconds_string = @seconds.to_s
        end
        if @minutes.to_s.to_i < 10
           
            @minutes_string = "0" + minutes.to_s
           
            if @minutes_string.length > 2
                
                @minutes_string.slice!(0)
            end
            else 
            @minutes_string = @minutes.to_s
        end
        if @hours.to_s.to_i < 10
            @hours_string = "0" + hours.to_s
            if @hours_string.length > 2
                @hours_string.slice!(0)
            end
            else 
            @hours_string = @hours.to_s
        end
        
        @time = @hours_string + ":" + @minutes_string + ":" + @seconds_string
    end
    
end

@timer = Timer.new