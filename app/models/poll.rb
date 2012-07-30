class Poll < ActiveRecord::Base
  attr_accessible :description, :name
  
  has_one :poll_edit_link
  has_one :poll_share_link
  has_many :questions
  has_many :answers, :through => :question
end
