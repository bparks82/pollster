class QuestionsController < ApplicationController
  
  def new
    @poll = poll.new
    @questions = @poll.questions.build
  end

  def create
    @question = Question.new(params[:question])
    if @question.save
      redirect_to poll_path(@question.poll)#(@poll.editlink)
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
