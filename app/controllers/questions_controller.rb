class QuestionsController < ApplicationController
  def show 
  	@question = Question.find(params[:id])
  	@answers = @question.answers
  	@answer = Answer.new
  	#.page(params[:page]).per(2)
  end

  def new
  	@question = Question.new
  end

  def create
    @question = Question.new(params[:question])
    if @question.save
      # Handle a successful save.
      # redirect_to root_path
      redirect_to question_url(@question)
      flash[:success] = "Here's your question page."
    else
      render 'new'
    end
  end
end
