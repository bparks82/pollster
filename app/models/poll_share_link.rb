class PollShareLink < ActiveRecord::Base
  attr_accessible :poll_id, :url
  
  belongs_to :poll
end
