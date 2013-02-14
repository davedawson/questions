class QuestionsController < ApplicationController
  def show 
  	@question = Question.find(params[:id])
  	@answers = @question.answers
  	#.page(params[:page]).per(2)
  end

  def new
  	@question = Question.new
  end

  def create
    @question = Question.new(params[:question])
    if @question.save
      # Handle a successful save.
    else
      render 'new'
    end
  end
end
