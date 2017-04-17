class CoachingController < ApplicationController
  ANSWERS = {
    no_question: "I don't care, get dressed and go to work!",
    silly_question: "Silly question, get dressed and go to work!",
  }
  def answer
    @query = params[:query]

    if @query[-1] == "?"
      @answer = ANSWERS[:silly_question]
    elsif @query == "I am going to work right now!"
      @answer = ""
    else
      @answer = ANSWERS[:no_question]
    end
  end

  def ask
  end
end
