class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @message_display =
      if @question == 'I am going to work'
        p 'Great!'
      elsif @question.include?('?')
        p 'Silly question, get dressed and go to work!'
      else
        p "I don't care, get dressed and go to work!"
      end
    # case @question
    # when @question.include?('?')
    #   'Silly question, get dressed and go to work!'
    # when 'I am going to work'
    #   'Great!'
    # else
    #   "I don't care, get dressed and go to work!"
    # end
  end
end
