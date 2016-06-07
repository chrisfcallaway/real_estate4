class Feedback < ActiveRecord::Base
 validates :user_id, :presence => true
 validates :proposal_id, :presence => true
 validates :body, :presence => true
  
 belongs_to :user
 belongs_to :proposal
end
