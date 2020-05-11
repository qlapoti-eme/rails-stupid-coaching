class QuestionsController < ApplicationController
  def ask 
  end

  # "I am going to work" -->  Great!
  # "xxx xxx?" --> Silly question, get dressed and go to work!
  # anything else --> I don't care, get dressed and go to work!
  def answer
    return unless params[:question]
    if (params[:question] == "I am going to work")
      @answer = 'Great!'
    elsif (params[:question][-1] == "?")
      @answer = 'Silly question, get dressed and go to work!'
    else
      # goto /ask
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
