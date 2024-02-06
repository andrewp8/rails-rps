class HomeController < ApplicationController
  def home
    render({:template => "game_templates/home"})
  end
  
  def rock
    @random_move = ["rock","paper","scissors"].sample
    @my_move = "rock"
    @result = ""
    if (@random_move == @my_move)
      @result = "tied"
    elsif (@random_move == "paper")
      @result = "lost"
    else
      @result = "won"
    end
    render({:template => "game_templates/play_rock"})
  end

  def paper
    @random_move = ["rock","paper","scissors"].sample
    @my_move = "paper"
    @result = ""
    if (@random_move == @my_move)
      @result = "tied"
    elsif (@random_move == "scissors")
      @result = "lost"
    else
      @result = "won"
    end
    render({:template => "game_templates/play_paper"})
  end

  def scissors
    @random_move = ["rock","paper","scissors"].sample
    @my_move = "scissors"
    @result = ""
    if (@random_move == @my_move)
      @result = "tied"
    elsif (@random_move == "rock")
      @result = "lost"
    else
      @result = "won"
    end
    render({:template => "game_templates/play_scissors"})
  end
end
