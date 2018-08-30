class Api::AnswersController < ApplicationController

    def name_caps
      @capital_name = params["my_name"]
      @capital_name = @capital_name.upcase
      if @capital_name[0].downcase == "a"
        @capital_name = "#{@capital_name}! Hey, your name starts with the first letter of the alphabet!"
      else
        @capital_name        
      end
      render "name_caps.json.jbuilder"
    end

    def guess
      @user_guess = params["my_guess"].to_i
      target = 32
      if @user_guess == target
        @response = "you guessed right"
      elsif @user_guess < target
        @response = "too low"
      elsif @user_guess > target
        @response = "too high"
      else 
        @response = "guess a number" # .to_i returns 0 if string isn't numberic - would need to do something like https://stackoverflow.com/questions/7749416/check-whether-a-variable-is-a-string-in-ruby
      end

      render "guess.json.jbuilder"
    end 

    def guess_segment
      @user_guess = params["num_guess"].to_i
      target = 32
      if @user_guess == target
        @response = "you guessed right"
      elsif @user_guess < target
        @response = "too low"
      elsif @user_guess > target
        @response = "too high"
      end
      render "guess.json.jbuilder"
    end 
    
end


