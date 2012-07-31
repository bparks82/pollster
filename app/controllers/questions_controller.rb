class QuestionsController < ApplicationController
  
  def new
  end

  def create
  end

  def edit
  end

  def show
    @question = Question.find(params[:id])
  end

  def destroy
  end
end
