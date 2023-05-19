class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    if @question.include?("?")
      @answer = "Silly question, get dressed and go to work!"
    elsif @question == "I am going to work"
      @answer = "Great!"
    elsif @question == ""
      @question = "I didn't ask a question because I'm stupide"
      @answer = "It seems correct ! Great job !"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
