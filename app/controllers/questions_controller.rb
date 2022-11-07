class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @correct = 'i am going to work'
    if params[:question].present?
      if @correct == params[:question].downcase
        @answer = 'Great!'
      elsif params[:question].include?('?')
        @answer = 'Silly question get dressed and go to work!'
      else
        @answer = "I don't care, get dressed and go to work!"
      end
    end
  end
end
