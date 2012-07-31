class QuestionsController < ApplicationController
  
  def new
    @question = Question.new
  end

  def create
    @question = Question.new(params[:question])
    if @question.save
      redirect_to poll_path(@poll)
    else
      render :new
    end
  end

  def edit
  end

  def show
    @question = Question.find(params[:id])
  end

  def destroy
  end
end
