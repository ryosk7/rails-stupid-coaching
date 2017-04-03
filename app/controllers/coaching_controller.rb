class CoachingController < ApplicationController
  def answer

    @query = params[:query]
    # puts "#{coach_answer_enhanced(your_message)}#{coach_answer(your_message)}"
    if @query
      if @query == "I am going to work right now!"
        @answer = ""
      elsif @query == @query.upcase
        @answer = "I can feel your motivation!"
      elsif @query[-1] == "?"
        @answer = "Silly question! Get back to work."
      elsif @query
        @answer = "I don't care! Get back to work."
      end
    end
  end

  def ask

  end
end
