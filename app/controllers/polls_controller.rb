class PollsController < ApplicationController
  def index
    @polls = Poll.all
  end

  def new
    @poll = Poll.new
    3.times do 
      @question = Question.new  
    end
  end

  def create
    @poll = Poll.new(params)
  end

  def edit
  end

  def update
  end

  def show
  end
end
