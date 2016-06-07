class Favorite < ActiveRecord::Base
 validates :user_id, :presence => true, :uniqueness => { :scope => :proposal_id }
 validates :proposal_id, :presence => true
 
 belongs_to :user
 belongs_to :proposal
end
