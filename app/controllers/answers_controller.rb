class AnswersController < ApplicationController
  def new
  	@answer = Answer.new
  end

  def create
    @answer = Answer.new(params[:answer])
    if @answer.save
      redirect_to :back
    else
      render 'new'
    end
  end
end
