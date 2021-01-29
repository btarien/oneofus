class PagesController < ApplicationController
  def home
    @question = Question.first
    Result.destroy_all
  end

  def summary
    @score = Result.all.select { |result| result.correct }.count
    @total = Result.count
    @results = Result.all
  end
end
