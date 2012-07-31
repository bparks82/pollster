require 'securerandom'


class Poll < ActiveRecord::Base
  attr_accessible :description, :name, :editlink, :sharelink
  
  has_many :questions
  has_many :answers, :through => :questions
  
  validates :name, :presence => :true
  validates :description, :presence => :true
  
  before_create :create_edit_link
  
  attr_accessible :questions
  accepts_nested_attributes_for :questions, :answers


  def create_edit_link
    self.editlink = SecureRandom.urlsafe_base64(6)   
  end


end


=begin
TDD Example
describe Poll do
  it "creates url parms before being save for the first time" do
    my_poll = Poll.new
    my_poll.save
    my_poll.url_param.should_not be_empty
  end
  
  it "creates unique url params" do
    (1.100){Poll.create :name => "whatever"}
    my_poll = Poll.new
    my_poll.save
    Poll.find_all_by_url_param(my_poll.url_param).count.shuold_be 2
  end
end
=end