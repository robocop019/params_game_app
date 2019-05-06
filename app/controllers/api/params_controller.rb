class Api::ParamsController < ApplicationController
  def guessing_game
    @name = params[:name].upcase!
    @guess = params[:guess].to_i
    number = 19

    if @name.chr == "A"
      @message_1 = "Hey, your name starts with the first letter of the alphabet!"
    end

    if @guess == number
      @message_2 = "You correctly guessed the right number!"
    elsif @guess > number
      @message_2 = "Your guess is too high!"
    elsif @guess < number
      @message_2 = "Your guess is too low!"
    end

    render 'params_view.json.jbuilder'
  end

  def url_segment_action
    @name = params[:name].upcase!
    @guess = params[:guess].to_i
    number = 19

    if @name.chr == "A"
      @message_1 = "Hey, your name starts with the first letter of the alphabet!"
    end

    if @guess == number
      @message_2 = "You correctly guessed the right number!"
    elsif @guess > number
      @message_2 = "Your guess is too high!"
    elsif @guess < number
      @message_2 = "Your guess is too low!"
    end

    render 'url_segment_view.json.jbuilder' 
  end

  def form_guessing_action
    @name = params[:name].upcase!
    @guess = params[:guess].to_i
    number = 19

    if @name.chr == "A"
      @message_1 = "Hey, your name starts with the first letter of the alphabet!"
    end

    if @guess == number
      @message_2 = "You correctly guessed the right number!"
    elsif @guess > number
      @message_2 = "Your guess is too high!"
    elsif @guess < number
      @message_2 = "Your guess is too low!"
    end
    
    render 'form_guessing_view.json.jbuilder'
  end
end