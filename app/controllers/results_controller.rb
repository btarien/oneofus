class ResultsController < ApplicationController
  def create
    question = Question.find(params[:question_id])
    answer = Answer.find(params[:answer_id])
    Result.create!(question: question, answer: answer, correct: answer.correct)
    if question.id < Question.count
      redirect_to question_path(question.id + 1)
    else
      redirect_to summary_path
    end
  end
end
