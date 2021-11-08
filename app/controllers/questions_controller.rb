class QuestionsController < ApplicationController

    def answer
      @question = params[:question]
      @answer = coach_answer(@question)
    end
    
    def ask
    
    end
    private

    def coach_answer(question)
      if question.end_with?("?")
        return "Silly question, get dressed and go to work!"
      elsif question == "I am going to work right now!"
        return "Great"
      else
        return "I don't care, get dressed and go to work!"
      end
    end
end
