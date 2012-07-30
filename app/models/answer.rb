class Answer < ActiveRecord::Base
  attr_accessible :body, :question_id, :poll_id
  
  belongs_to :question
  belongs_to :poll, :through => :question
  
end
