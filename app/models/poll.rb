require 'securerandom'


class Poll < ActiveRecord::Base
  attr_accessible :description, :name, :editlink, :sharelink
  
  has_many :questions
  has_many :answers, :through => :questions
  
  validates :name, :presence => :true
  validates :description, :presence => :true
  
  before_save :create_edit_link
  
  attr_accessible :questions
  accepts_nested_attributes_for :questions, :answers


  def create_edit_link
    self.editlink = SecureRandom.urlsafe_base64(6)   
  end


end
