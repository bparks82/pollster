class PollsController < ApplicationController
  def index
    @polls = Poll.all
  end

  def new
    @poll = Poll.new  
  end

  def create
    @poll = Poll.new(params[:poll])
    
    if @poll.save
      redirect_to edit_poll_path(@poll)
    else
      render :new
    end
  end

  def edit
    @poll = Poll.find(params[:id])
    #redirect_to poll_path(@poll)
  end

  def update
    @poll = Poll.find(params[:id])
    @poll.update_attributes(params[:question_attributes])
    redirect_to polls_path
  end

  def show
    @poll = Poll.find(params[:id])
  end
end
