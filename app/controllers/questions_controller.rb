class QuestionsController < ApplicationController
  def show
    @question = Question.find(params[:id])
  end

  def add_answer(answer_id)
    @question = Question.find(params[:id])
    @answer = Answer.find(params[:answer_id])
    @question.answer = answer
    @next = @question.id == Question.count ? summary_path : question_path(@question.id + 1)
    redirect_to @next
  end
end
