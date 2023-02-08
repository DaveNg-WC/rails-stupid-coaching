class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]

    if @question.match?(/^i am going to work$/i)
      @answer = 'Great!'
    elsif @question.match?(/^.*\?$/)
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end

end
