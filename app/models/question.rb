class Question < ActiveRecord::Base
  attr_accessible :body, :poll_id
  
  belongs_to :poll
  has_many :answers
  
  validates :body, :presence => :true
  accepts_nested_attributes_for :answers
end
