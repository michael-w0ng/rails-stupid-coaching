class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]

    if @question == "I am going to work"
      return @answer = 'Great!'
    elsif @question.ends_with?('?')
      return @answer = "Silly question, get dressed and go to work!"
    else return @answer = "I don't care, get dressed and go to work!"
    end
  end
end

# 1. If the message is I am going to work, the coach will answer Great!
# 2. If the message has a question mark ? at the end, the coach will answer Silly question, get dressed and go to work!.
# 3. Otherwise he will answer I don't care, get dressed and go to work!
